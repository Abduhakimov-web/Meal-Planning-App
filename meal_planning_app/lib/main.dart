import 'package:flutter/material.dart';
import 'package:meal_planning_app/screens/home/home_page.dart';
import 'package:meal_planning_app/screens/home/list_page.dart';
import 'package:meal_planning_app/screens/home/plan_page.dart';
import 'package:meal_planning_app/screens/log_and_sign/login_page.dart';
import 'package:meal_planning_app/screens/log_and_sign/register_page.dart';
import 'package:meal_planning_app/widgets/bottom_nav_bar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tlmtetocflfhryeuuosi.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRsbXRldG9jZmxmaHJ5ZXV1b3NpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU0ODk3NDksImV4cCI6MjAyMTA2NTc0OX0.bIgBWRwOZoWaurCOv_pIGhKNlDA7of25m6wy07YXsVA',
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
      initialRoute: '/',
      home: LoginPage(onTap: () {  },)
      // home: HomePage(),
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/plan': (context) => PlanPage(),
      //   '/list': (context) => ListPage(),
      // },
      // theme: lightMode,
      // darkTheme: darkMode,
    );
  }
}
