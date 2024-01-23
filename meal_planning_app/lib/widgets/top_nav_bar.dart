import 'package:flutter/material.dart';

class NavigationBarTop extends StatelessWidget {
  const NavigationBarTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          SizedBox(height: 80, width: 150, child: Image.asset('pngs/logo.png')),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItems(title: 'Home'),
              SizedBox(width: 40),
              _NavBarItems(title: 'Plan'),
              SizedBox(width: 40),
              _NavBarItems(title: 'List'),
              SizedBox(width: 40),
              _NavBarItems(title: 'Contact'),
              SizedBox(width: 40),
              _NavBarItems(title: 'About'),
          ],)
        ],
      ),
    );
  }
}

class _NavBarItems extends StatelessWidget {
  final String title;
  const _NavBarItems({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18),);
  }
}

