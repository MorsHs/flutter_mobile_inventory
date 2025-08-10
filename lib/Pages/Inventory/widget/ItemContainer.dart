import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});
// TODO Make this responsive
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              'assets/images/landscape.jpg',
              // height: 150, Im shooting my foot by unrestricted size on image
              // width: 180,
                fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG TEXT',
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(overflow: TextOverflow.ellipsis,),
                  ),
                ),
                SizedBox(height: 4,),
                Text('Po No. : 123654', style: description()),
                Text('Pr No. : 54412', style: description()),
                Text('ICS No. : 988556', style: description()),
              ],
            ),
          ), // Maxlines is literal lines it can contain on a set value sa width sa parent
        ],
      ),
    );
  }

  // TextStyle description() {
  //   return TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis);
  // }
  TextStyle description() {
    return GoogleFonts.poppins(
      letterSpacing: 0.3,
      textStyle: TextStyle(overflow: TextOverflow.ellipsis),
    );
  }
}
