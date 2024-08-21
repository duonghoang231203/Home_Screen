import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/images.dart';
import '../utils/icon_paths.dart';
import '../utils/texts.dart';
import 'item_pro_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Images.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          // AppBar Content
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 32, // Adjusted size for the IconButton
                    icon: SvgPicture.asset(
                      IconPaths.setting,
                      width: 32,
                      height: 30, // Set width and height for the icon
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    Images.logo,
                    height: 30,
                  ),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: ItemProButton(
                        showBling: true,
                        isInAppBar: true,
                      ), // Pro Button
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  Texts.introduction,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 158,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.yellow,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      Texts.tryButton,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
