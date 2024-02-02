import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Menu'),
      ),
      ListTile(
        title: const Text('Home'),
        onTap: () {
          // Update the state of the app.
          // ...
          // Then close the drawer
          Navigator.pushNamed(context, '/home');
        },
      ),
      ListTile(
        title: const Text('Meal Plan'),
        onTap: () {
          // Update the state of the app.
          // ...
          // Then close the drawer
          Navigator.pushNamed(context, '/mealplan');
        },
      ),
      ListTile(
        title: const Text('Shopping List'),
        onTap: () {
          // Update the state of the app.
          // ...
          // Then close the drawer
        Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('Profile'),
        onTap: () {
          // Update the state of the app.
          // ...
          // Then close the drawer
        Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('Log Out'),
        onTap: () {
          // Update the state of the app.
          // ...
          // Then close the drawer
          Navigator.pushNamed(context, '/login');
        // Navigator.pop(context);
        },
      ),
    ],
  ),
);
}

}