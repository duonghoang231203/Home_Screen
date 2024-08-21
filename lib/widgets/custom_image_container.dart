import 'package:flutter/material.dart';

import 'item_pro_button.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final TextAlign textAlign;
  final bool showItemProButton;

  const CustomImageContainer({
    Key? key,
    required this.imagePath,
    required this.text,
    this.textAlign = TextAlign.center,
    this.showItemProButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: 144,
            height: 180,
            // fit: BoxFit.cover,
          ),
          if (showItemProButton)
            const Positioned(
              top: -1,
              right: -1,
              child: SizedBox(
                width: 50,
                height: 30,
                child: ItemProButton(
                  showBling: false,
                  isInAppBar: false,
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: textAlign,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
