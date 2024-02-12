import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../utils/utils.dart';
import '../../data/models/models.dart';

class TopBookItem extends StatelessWidget {
  final BookModel book;
  const TopBookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Get.toNamed(Routes.DETAIL);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: SizedBox(
          // decoration: BoxDecoration(color: colorPrimary),
          width: MediaQuery.of(context).size.width * 0.4,
          height: 200,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  'assets/images/cover3.jpeg',
                  // width: double.infinity,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      book.title ?? '',
                      style: GoogleFonts.quicksand(
                          color: colorblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffFFD233),
                          size: 20.0,
                        ),
                        Text(
                          '${book.rating}/5',
                          style: GoogleFonts.quicksand(
                              color: colordarkgrey, fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}