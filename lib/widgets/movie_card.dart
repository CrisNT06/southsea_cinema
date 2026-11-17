import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: movie.title.toUpperCase(),
              style: const TextStyle(
                color: cinemaBrand,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: '  (${movie.ageRating})',
                  style: const TextStyle(
                    color: cinemaBackground,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                movie.posterPath,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(movie.synopsis),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text('BOOK TICKETS'),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(movie.screeningTime),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cinemaBrand,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MovieListing(movie: movie);
                      },
                    ),
                  );
                },
                child: const Text('BOOK NOW'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
