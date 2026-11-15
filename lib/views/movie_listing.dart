import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  final Movie movie;

  const MovieListing({super.key, required this.movie});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String _bookingMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(18),
          color: cinemaSurface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.movie.title.toUpperCase()} (${widget.movie.ageRating})',
                style: cinemaHeaderStyle,
              ),
              const SizedBox(height: 10),
              Image.asset(
                widget.movie.posterPath,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              const Text('Southsea Cinema Room'),
              const SizedBox(height: 10),
              Text(widget.movie.screeningTime),
              const SizedBox(height: 10),
              Text(widget.movie.synopsis),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Tickets (£${widget.movie.price.toStringAsFixed(2)} each)',
                    ),
                  ),
                  DropdownMenu<int>(
                    width: 120,
                    initialSelection: _ticketQuantity,
                    onSelected: (int? value) {
                      if (value != null) {
                        setState(() {
                          _ticketQuantity = value;
                        });
                      }
                    },
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(value: 1, label: '1'),
                      DropdownMenuEntry(value: 2, label: '2'),
                      DropdownMenuEntry(value: 3, label: '3'),
                      DropdownMenuEntry(value: 4, label: '4'),
                      DropdownMenuEntry(value: 5, label: '5'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _bookingMessage =
                        'Added $_ticketQuantity tickets to the order';
                  });
                },
                child: const Text('Add to order'),
              ),
              const SizedBox(height: 10),
              Text(_bookingMessage),
            ],
          ),
        ),
      ),
    );
  }
}