import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:meal_planning_app/widgets/my_button.dart";
import "package:meal_planning_app/widgets/my_textfield.dart";
import "package:meal_planning_app/widgets/social_button.dart";

class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //Login Method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.primary
          ],
        )),
        alignment: Alignment.center,
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
                //email textfield
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                //password textfield
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 15,
                ),
                //forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //sign in button
                MyButton(text: "Login", onTap: login),
                const SizedBox(
                  height: 25,
                ),
                //dont have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        " Register Here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Column(
                  children: [
                    SocialButton(
                        iconPath: 'assets/svgs/google.svg',
                        label: 'Continue with Google'),
                    SizedBox(
                      height: 10,
                    ),
                    SocialButton(
                        iconPath: 'assets/svgs/apple.svg',
                        label: 'Continue with Apple')
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
