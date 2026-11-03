import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

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
      body: Container(
          padding: const EdgeInsets.all(18),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Top Gun: Maverick', style: cinemaHeaderStyle),
            const SizedBox(height: 10),
            const Text('Runtime: 130 minutes'),
            const SizedBox(height: 10),
            const Text('Captain Pete "Maverick" Mitchell returns after more '
                'than 30 years as a top Navy aviator to train an elite group of Top Gun graduates '
                'for a dangerous, low-altitude strike on an unsanctioned foreign uranium enrichment plant.'),
            const SizedBox(height: 20),
            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              onSelected: (int? value) {
                if (value != null) {
                  setState(() {
                    _ticketQuantity = value;
                    print('Tickets selected: $_ticketQuantity');
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
            const SizedBox(height: 10),
            Text('Tickets selected: $_ticketQuantity'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _bookingMessage =
                      'Added $_ticketQuantity tickets to the order';
                });
                print(_bookingMessage);
              },
              child: const Text('Add to order'),
            ),
            const SizedBox(height: 10),
            Text(_bookingMessage),
          ]) //
          ),
    );
  }
}
