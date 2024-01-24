import "package:flutter/material.dart";
import "package:meal_planning_app/widgets/carousel.dart";
import "package:meal_planning_app/widgets/grid_builder.dart";
import "package:meal_planning_app/widgets/recipe_card.dart";
import "package:meal_planning_app/widgets/top_nav_bar.dart";

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import "../log_and_sign/register_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final PageController pageController;
  ScrollController _scrollController = ScrollController();
  // int pageNo = 0;

  // Timer? carasouelTmer;

  // Timer getTimer() {
  //   return Timer.periodic(const Duration(seconds: 3), (timer) {
  //     if (pageNo == 4) {
  //       pageNo = 0;
  //     }
  //     pageController.animateToPage(
  //       pageNo,
  //       duration: const Duration(seconds: 1),
  //       curve: Curves.easeInOutCirc,
  //     );
  //     pageNo++;
  //   });
  // }
  
  @override
  void initState() {
    // pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    // carasouelTmer = getTimer();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        // showBtmAppBr = false;
        setState(() {});
      } else {
        // showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // pageController.dispose();
    super.dispose();
  }

  // bool showBtmAppBr = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              // const SizedBox(
              //   height: 36.0,
              // ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: NavigationBarTop(),
              ),
              // SizedBox(
              //   height: 200,
              //   child: PageView.builder(
              //     controller: pageController,
              //     onPageChanged: (index) {
              //       pageNo = index;
              //       setState(() {});
              //     },
              //     itemBuilder: (_, index) {
              //       return AnimatedBuilder(
              //         animation: pageController,
              //         builder: (ctx, child) {
              //           return child!;
              //         },
              //         child: GestureDetector(
              //           onTap: () {
              //             ScaffoldMessenger.of(context).showSnackBar(
              //               SnackBar(
              //                 content:
              //                     Text("Hello you tapped at ${index + 1} "),
              //               ),
              //             );
              //           },
              //           onPanDown: (d) {
              //             carasouelTmer?.cancel();
              //             carasouelTmer = null;
              //           },
              //           onPanCancel: () {
              //             carasouelTmer = getTimer();
              //           },
              //           child: Container(
              //             margin: const EdgeInsets.only(
              //                 right: 8, left: 8, top: 24, bottom: 12),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(24.0),
              //               color: Colors.amberAccent,
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     itemCount: 5,
              //   ),
              // ),
              // const SizedBox(
              //   height: 12.0,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: List.generate(
              //     5,
              //     (index) => GestureDetector(
              //       child: Container(
              //         margin: const EdgeInsets.all(2.0),
              //         child: Icon(
              //           Icons.circle,
              //           size: 12.0,
              //           color: pageNo == index
              //               ? Colors.indigoAccent
              //               : Colors.grey.shade300,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              ImageSlider(),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class PopUpMen extends StatelessWidget {
//   final List<PopupMenuEntry> menuList;
//   final Widget? icon;
//   const PopUpMen({Key? key, required this.menuList, this.icon})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       itemBuilder: ((context) => menuList),
//       icon: icon,
//     );
//   }
// }

// class FabExt extends StatelessWidget {
//   const FabExt({
//     Key? key,
//     required this.showFabTitle,
//   }) : super(key: key);

//   final bool showFabTitle;

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(
//       onPressed: () {},
//       label: AnimatedContainer(
//         duration: const Duration(seconds: 2),
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           children: [
//             const Icon(CupertinoIcons.cart),
//             SizedBox(width: showFabTitle ? 12.0 : 0),
//             AnimatedContainer(
//               duration: const Duration(seconds: 2),
//               child: showFabTitle ? const Text("Go to cart") : const SizedBox(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
