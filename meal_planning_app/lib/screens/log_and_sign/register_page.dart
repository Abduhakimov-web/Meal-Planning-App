import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:meal_planning_app/widgets/my_button.dart";
import "package:meal_planning_app/widgets/my_textfield.dart";
import "package:meal_planning_app/widgets/social_button.dart";
import 'package:supabase_flutter/supabase_flutter.dart';
import "package:meal_planning_app/theme/dark_mode.dart";
import "package:meal_planning_app/theme/light_mode.dart";

final supabase = Supabase.instance.client;

class RegisterPage extends StatelessWidget {

  RegisterPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  bool passwordsMatch() {
    if(passwordController.text==confirmPwController.text) {
      return true;
    } else {
      return false;
    }
  }
  
  bool isNotEmpty() {
    if(usernameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmPwController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> usernameDoesNotExist() async {
    var username = await supabase
      .from('users')
      .select()
      .eq('username', usernameController.text)
      .count(CountOption.exact);
    if(username.count == 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> emailDoesNotExist() async {
    var email = await supabase
      .from('users')
      .select()
      .eq('email', emailController.text)
      .count(CountOption.exact);
    if(email.count == 0) {
      return true;
    } else {
      return false;
    }
  }

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
                MyButton(text: "Register", onTap: () async {
                  if(isNotEmpty()) {
                    if(await usernameDoesNotExist()) {
                      if(await emailDoesNotExist()) {
                        if(passwordsMatch()) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Registered Successfully!')));
                          await supabase
                          .from('users')
                          .insert({'username': usernameController.text,'password': passwordController.text, 'mail': emailController.text});
                          Navigator.pushNamed(context, '/login');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Passwords did not match')));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account with this email already exists')));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This username is already taken')));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please, fill all the fields')));
                  }
                }, ),
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
                      onTap: () {Navigator.pushNamed(context, '/login');},
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
