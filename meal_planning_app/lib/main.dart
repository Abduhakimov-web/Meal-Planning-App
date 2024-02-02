import 'package:flutter/material.dart';
import 'package:meal_planning_app/screens/Home/home_page.dart';
import 'package:meal_planning_app/screens/search_page.dart';
import 'package:meal_planning_app/screens/log_and_sign/login_page.dart';
import 'package:meal_planning_app/screens/log_and_sign/register_page.dart';
import 'package:meal_planning_app/screens/meal_plan_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import "package:meal_planning_app/theme/dark_mode.dart";
import "package:meal_planning_app/theme/light_mode.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tlmtetocflfhryeuuosi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRsbXRldG9jZmxmaHJ5ZXV1b3NpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU0ODk3NDksImV4cCI6MjAyMTA2NTc0OX0.bIgBWRwOZoWaurCOv_pIGhKNlDA7of25m6wy07YXsVA',
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/home': (context) => HomePage(),
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/search':(context) => SearchPage(),
          '/mealplan':(context) => MealPlanPage(),
        },
        theme: lightMode,
        darkTheme: darkMode,
        );
  }
}
