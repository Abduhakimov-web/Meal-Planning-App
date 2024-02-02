import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key,}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Foodish'),
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {Navigator.pushNamed(context, '/search');},
          ),
        ],
    );
  }
}