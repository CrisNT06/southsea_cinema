import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test('getMovies contains the expected films', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies[0].id, 'top-gun-maverick');
      expect(movies[0].title, 'Top Gun: Maverick');
      expect(movies[0].price, 10.00);
      expect(movies[0].posterPath, isNotEmpty);

      expect(movies[1].id, 'godzilla-minus-one');
      expect(movies[1].title, 'Godzilla Minus One');
      expect(movies[1].price, 10.00);
      expect(movies[1].posterPath, isNotEmpty);
    });

    test('getMovieById returns the matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('top-gun-maverick');

      expect(movie, isNotNull);
      expect(movie?.title, 'Top Gun: Maverick');
      expect(movie?.price, 10.00);
    });

    test('getMovieById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });
  });
}