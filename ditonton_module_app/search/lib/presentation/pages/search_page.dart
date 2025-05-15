// ignore_for_file: constant_identifier_names
import 'package:core/core.dart';
import 'package:core/presentation/widgets/movie_card_list.dart';
import 'package:core/presentation/widgets/tv_serie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search/presentation/bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  static const ROUTE_NAME = '/search';

  final Category category;

  const SearchPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search ${category == Category.movie ? "Movies" : "Series"}',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (query) {
                category == Category.movie
                    ? context.read<SearchBloc>().add(OnQueryMovieChanged(query))
                    : context.read<SearchBloc>().add(
                      OnQueryTvSerieChanged(query),
                    );
              },
              decoration: InputDecoration(
                hintText: 'Search title',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.search,
            ),
            SizedBox(height: 16),
            Text('Search Result', style: kHeading6),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is SearchMoviesHasData &&
                    category == Category.movie) {
                  final result = state.result;
                  return Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemBuilder: (context, index) {
                        final movie = state.result[index];
                        return MovieCard(movie);
                      },
                      itemCount: result.length,
                    ),
                  );
                } else if (state is SearchTvSeriesHasData &&
                    category == Category.tvSerie) {
                  final result = state.result;
                  return Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemBuilder: (context, index) {
                        final tvSerie = state.result[index];
                        return TvSerieCard(tvSerie);
                      },
                      itemCount: result.length,
                    ),
                  );
                } else if (state is SearchError) {
                  return Expanded(child: Center(child: Text(state.message)));
                } else {
                  return Expanded(child: Container());
                }
              },
            ),
            // Consumer<SearchNotifier>(
            //   builder: (context, data, child) {
            //     if (data.state == RequestState.Loading) {
            //       return Center(child: CircularProgressIndicator());
            //     } else if (data.state == RequestState.Loaded) {
            //       final result =
            //           category == Category.movie
            //               ? data.moviesResult
            //               : data.tvSeriesResult;
            //       return Expanded(
            //         child: ListView.builder(
            //           padding: const EdgeInsets.all(8),
            //           itemBuilder: (context, index) {
            //             if (category == Category.movie) {
            //               final movie = data.moviesResult[index];
            //               return MovieCard(movie);
            //             } else {
            //               final tvSerie = data.tvSeriesResult[index];
            //               return TvSerieCard(tvSerie);
            //             }
            //           },
            //           itemCount: result.length,
            //         ),
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
