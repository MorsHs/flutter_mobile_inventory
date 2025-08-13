import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height * 0.15;

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Wrap content vertically
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              'assets/images/landscape.jpg',
              height: imageHeight.clamp(100, 150),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Wrap content vertically
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG TEXT',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                const SizedBox(height: 4),
                const Text('Category : Monitor'),
                const Text('Date Added : 12/23/2002'),
                Text('Po No. : 123654', style: description()),
                Text('Pr No. : 54412', style: description()),
                Text('ICS No. : 988556', style: description()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle description() {
    return GoogleFonts.poppins(
      letterSpacing: 0.3,
      textStyle: const TextStyle(overflow: TextOverflow.ellipsis),
    );
  }
}
