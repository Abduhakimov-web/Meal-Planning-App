import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:meal_planning_app/widgets/my_button.dart";
import "package:meal_planning_app/widgets/my_textfield.dart";
import "package:meal_planning_app/widgets/social_button.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(

      ),
    );
  }
}
