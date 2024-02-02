import "package:flutter/material.dart";
import 'package:meal_planning_app/widgets/my_app_bar.dart';
import "package:meal_planning_app/widgets/carousel.dart";
import "package:meal_planning_app/widgets/grid_builder.dart";
import "package:meal_planning_app/widgets/my_drawer.dart";
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  
  @override
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
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              ImageSlider(),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}