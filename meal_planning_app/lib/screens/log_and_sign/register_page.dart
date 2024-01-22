import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:meal_planning_app/widgets/my_button.dart";
import "package:meal_planning_app/widgets/my_textfield.dart";
import "package:meal_planning_app/widgets/social_button.dart";

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();


  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.primary
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                SvgPicture.asset(
                  'assets/svgs/logo1.svg',
                  width: 60,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(
                  height: 20,
                ),
                //app name
                const Text(
                  "F O O D I S H",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 35,
                ),
                //username textfield
                MyTextField(
                  hintText: "Username",
                  obscureText: false,
                  controller: usernameController,
                ),
                //email textfield
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
                //password textfield
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController,
                ),
                //Confirm Password textfield
                MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirmPwController,
                ),
                const SizedBox(
                  height: 20,
                ),
                //sign in button
                MyButton(text: "Register", onTap: register),
                const SizedBox(
                  height: 25,
                ),
                //dont have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        " Login Here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                        iconPath: 'assets/svgs/google.svg',
                        label: 'Register with Google'),
                    SizedBox(
                      height: 2,
                    ),
                    SocialButton(
                        iconPath: 'assets/svgs/apple.svg',
                        label: 'Register with Apple')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
