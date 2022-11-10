import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ratingbar extends StatelessWidget {
  final double size;
  const Ratingbar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: size,
        tapOnlyMode: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }
}
