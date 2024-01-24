import 'package:flutter/material.dart';

class NavigationBarTop extends StatefulWidget {
  const NavigationBarTop({super.key});
  State<NavigationBarTop> createState() => _NavigationBarTopState();
}

class _NavigationBarTopState extends State<NavigationBarTop> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: 80, width: 250, child: Image.asset('pngs/logo.png')),
          Row(children: [
            SizedBox(
              width: 300,
              child: SearchBar(
                  hintText: 'Search recipes here',
                  controller: _searchController,
                  hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 14, color: Colors.grey[500])),
                  ),),
                  IconButton(
                    icon: Icon(Icons.tune_rounded),
                    onPressed: () {
                
                  },
                ),
              ],),
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


