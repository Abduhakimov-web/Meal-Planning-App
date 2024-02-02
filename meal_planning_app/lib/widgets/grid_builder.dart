import 'package:flutter/material.dart';
import 'package:meal_planning_app/main.dart';
import 'package:meal_planning_app/widgets/recipe_card.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({Key? key,}) : super(key: key);

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}

class _GridBuilderState extends State<GridBuilder> {
  List<Map<String, dynamic>> _recipes = [];

  void get_recipes() async {
  List<Map<String, dynamic>> recipes = await supabase
  .from('recipes')
  .select('title, cooking_time, photo');
  setState(() {
    _recipes = recipes;
  }
  );
  }

  void initState() {
    get_recipes();
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: _recipes.length,
      itemBuilder: (_, index) {
        return RecipeCard(recipe_title: _recipes[index]['title'], cooking_time: _recipes[index]['cooking_time'], photo: _recipes[index]['photo'],);
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(
        //       16.0,
        //     ),
        //     color: Colors.amberAccent.shade100,
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       ClipRRect(
        //         borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(16.0),
        //           topRight: Radius.circular(16.0),
        //         ),
        //         child: Image.network(
        //           "${gridMap.elementAt(index)['images']}",
        //           height: 100,
        //           width: double.infinity,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               "${gridMap.elementAt(index)['title']}",
        //               style: Theme.of(context).textTheme.subtitle1!.merge(
        //                     const TextStyle(
        //                       fontWeight: FontWeight.w700,
        //                     ),
        //                   ),
        //             ),
        //             const SizedBox(
        //               height: 8.0,
        //             ),
        //             Text(
        //               "${gridMap.elementAt(index)['price']}",
        //               style: Theme.of(context).textTheme.subtitle2!.merge(
        //                     TextStyle(
        //                       fontWeight: FontWeight.w700,
        //                       color: Colors.grey.shade500,
        //                     ),
        //                   ),
        //             ),
        //             const SizedBox(
        //               height: 8.0,
        //             ),
        //             Row(
        //               children: [
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(
        //                     CupertinoIcons.heart,
        //                   ),
        //                 ),
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(
        //                     CupertinoIcons.cart,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }
}