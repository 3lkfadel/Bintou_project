
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    super.key, required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 8, horizontal:6 ) ,
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 33,
            color: const Color.fromARGB(255, 228, 153, 178)
          )
        ]
       ),
       child: Column(
        children: [ Icon(
          Icons.star,
          color: Colors.yellow,
          size:20,
        ),
        SizedBox(height: 5,),
        Text("Score" ,
         style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold),)
    
       ],),
      );
  }
}