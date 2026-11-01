import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Top Gun: Maverick', style: cinemaHeaderStyle),
            const SizedBox(height: 10),
            const Text('Runtime: 130 minutes'),
            const SizedBox(height: 10),
            const Text('Captain Pete "Maverick" Mitchell returns after more '
            'than 30 years as a top Navy aviator to train an elite group of Top Gun graduates ' 
            'for a dangerous, low-altitude strike on an unsanctioned foreign uranium enrichment plant.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Add to order button pressed');
              },
              child: const Text('Add to order'),
              
            )
          ]
        )
      ),
    );
  }
}
