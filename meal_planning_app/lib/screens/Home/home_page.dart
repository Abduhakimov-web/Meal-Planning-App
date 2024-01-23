import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:meal_planning_app/widgets/carousel.dart";
import "package:meal_planning_app/widgets/centered_view/centered_view.dart";
import "package:meal_planning_app/widgets/my_button.dart";
import "package:meal_planning_app/widgets/my_textfield.dart";
import "package:meal_planning_app/widgets/social_button.dart";
import "package:meal_planning_app/widgets/top_nav_bar.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: CenteredView(
        child: Column(
            children: <Widget>[
              NavigationBarTop(),
              ImageSlider()
            ],
        ),
      ),
    );
  }
}
