import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'top-gun-maverick',
        title: 'Top Gun: Maverick',
        synopsis: 'Captain Pete "Maverick" Mitchell returns after more '
                'than 30 years as a top Navy aviator to train an elite group '
                'of Top Gun graduates for a dangerous, low-altitude strike '
                'on an unsanctioned foreign uranium enrichment plant.',
        ageRating: '12A',
        screeningTime: 'Wednesday 25 Nov 2026, 15:00',
        price: 10.00,
        posterPath: 'assets/images/topgunmaverickposter.jpeg',
      ),
      Movie(
        id: 'godzilla-minus-one',
        title: 'Godzilla Minus One',
        synopsis: 'Set in post-World War II Japan, Godzilla Minus One '
                  'follows Kōichi Shikishima, a disgraced former kamikaze '
                  'pilot paralyzed by his guilt of surviving, where he steps '
                  'up to defend his country when a giant radiation-mutated '
                  'Godzilla attacks.',
        ageRating: '12A',
        screeningTime: 'Thursday 26 Nov 2026, 12:00',
        price: 10.00,
        posterPath: 'assets/images/godzillaposter.jpeg',
      ),
    ];
  }
}