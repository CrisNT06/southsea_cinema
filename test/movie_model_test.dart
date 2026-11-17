import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance with given properties', () {
      const movie = Movie(
        id: 'film',
        title: 'Film',
        synopsis: 'Synopsis',
        ageRating: '12A',
        screeningTime: 'Saturday 21 Nov 2026, 14:00',
        price: 9.00,
        posterPath: 'assets/images/film.jpeg',
      );

      expect(movie.id, 'film');
      expect(movie.title, 'Film');
      expect(movie.synopsis, 'Synopsis');
      expect(movie.ageRating, '12A');
      expect(movie.screeningTime, 'Saturday 21 Nov 2026, 14:00');
      expect(movie.price, 9.00);
      expect(movie.posterPath, 'assets/images/film.jpeg');
    });

    test('formattedPrice shows up to two decimal points for whole-pound price',
        () {
      const movie = Movie(
        id: 'test1',
        title: 'Test 1',
        synopsis: 'Test1',
        ageRating: 'Age1',
        screeningTime: 'Time1',
        price: 9,
        posterPath: 'path1',
      );

      expect(movie.formattedPrice, '£9.00');
    });

    test('formattedPrice shows up to two decimal points for price with pence',
        () {
      const movie = Movie(
        id: 'test2',
        title: 'Test 2',
        synopsis: 'Test2',
        ageRating: 'Age2',
        screeningTime: 'Time2',
        price: 9.50,
        posterPath: 'path2',
      );

      expect(movie.formattedPrice, '£9.50');
    });
  });
}
