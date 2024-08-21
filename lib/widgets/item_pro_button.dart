import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/icon_paths.dart';
import '../utils/texts.dart';

class ItemProButton extends StatelessWidget {
  final bool showBling;
  final bool isInAppBar;

  const ItemProButton({
    Key? key,
    this.showBling = false,
    this.isInAppBar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Elevated Button
        Container(
          decoration: BoxDecoration(
            borderRadius: isInAppBar
                ? BorderRadius.circular(16)
                : const BorderRadius.only(bottomLeft: Radius.circular(16.0)),
            gradient: const LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.orangeAccent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: isInAppBar
                    ? BorderRadius.circular(16)
                    : const BorderRadius.only(bottomLeft: Radius.circular(16.0)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            ),
            child: const Text(
              Texts.pro,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        // Conditionally show the bling icon
        if (showBling)
          Positioned(
            top: -11,
            left: 37,
            child: SvgPicture.asset(
              IconPaths.bling,
              width: 24,
              height: 24,
            ),
          ),
      ],
    );
  }
}
