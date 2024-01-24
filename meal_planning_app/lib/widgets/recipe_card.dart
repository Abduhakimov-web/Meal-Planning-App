import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeCard extends StatelessWidget {
  final String recipe_title;
  final int cooking_time;
  final String photo;
  const RecipeCard({super.key, required this.recipe_title, required this.cooking_time, required this.photo});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.network(photo, height: 200, fit: BoxFit.fitWidth),
            ),
            Text(recipe_title, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(height: 4,),
            // Text('Lorem ipsum lorem ipsum', style: TextStyle(fontSize: 16,color: Colors.black)),
            // SizedBox(height: 6,),
            // RatingBar.builder(
            //   initialRating: 4,
            //   minRating: 1,
            //   direction: Axis.horizontal,
            //   itemCount: 5,
            //   itemSize: 16,
            //   itemPadding: EdgeInsets.symmetric(horizontal: 4),
            //   itemBuilder: (context,_) => Icon(
            //     Icons.star, color: Colors.red,),
            //   onRatingUpdate: (index){},
            // ),
            // SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [Icon(Icons.schedule, color: Colors.red, size: 20,),
                Text(" $cooking_time min", style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold)),]),
                Icon(Icons.favorite_border, color: Colors.red, size: 20,)
              ],
            )
          ],
        ),
      ),

    );
  }
}

