import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meal_planning_app/widgets/grid_builder.dart';
import 'package:meal_planning_app/widgets/my_app_bar.dart';
import 'package:meal_planning_app/widgets/my_drawer.dart';
import 'package:meal_planning_app/widgets/my_textfield.dart';
import 'package:meal_planning_app/widgets/top_nav_bar.dart';

class SearchPage extends StatefulWidget {

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
    ScrollController _scrollController = ScrollController();
    String _selectedCategory = 'All';
    int _selectedCookingTime = 0;
    List<String> _selectedIngredients = [];
    double _selectedRating = 0.0;
    int _selectedCalorie = 0;

   void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {});
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 36.0,
              ),
              Row(children: [
            SizedBox(
              width: 400,
              child: SearchBar(
                  hintText: 'Search recipes here',
                  controller: _searchController,
                  hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 14, color: Colors.grey[500])),
                  ),),
                  IconButton(
                    icon: Icon(Icons.tune_rounded),
                    onPressed: () {
                
                  },
                ),
              ],),
              // const Padding(
              //   padding: EdgeInsets.all(24.0),
              //   child: GridBuilder(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}