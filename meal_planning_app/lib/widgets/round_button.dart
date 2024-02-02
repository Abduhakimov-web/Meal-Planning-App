import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const RoundButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 60,
        height: 60,
        child: ElevatedButton(
          // decoration: BoxDecoration(
          //     color: Theme.of(context).colorScheme.background,
          //     borderRadius: BorderRadius.circular(12)),
          // padding: const EdgeInsets.all(25),

          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary),
          onPressed: onTap,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
