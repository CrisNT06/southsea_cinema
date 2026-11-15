import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart''
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  
  const MovieCard({super.key, required this.movie});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignemnt: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignemnt: CrossAxisAlignemnt.start,
              children: [
                Image.asset(
                  movie.posterPath,
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignemnt: CrossAxisAlignemnt.start,
                    children: [
                      Text(movie.title, style: cinemaHeaderStyle),
                      const SizedBox(height: 10),
                      Text('Rated ${movie.ageRating}'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}
              child: const Text('BOOK NOW'),   
            ),
          ],
        ),
      ),
    );
  }
}