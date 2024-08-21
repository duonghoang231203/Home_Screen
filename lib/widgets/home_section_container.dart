import 'package:flutter/material.dart';
import 'package:home_screen/widgets/promotional_banner.dart';

import '../utils/images.dart';
import '../utils/texts.dart';
import '../utils/titles.dart';
import 'custom_image_container.dart';

class HomeSectionContainer extends StatelessWidget {
  final double width;

  const HomeSectionContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHomeOption(context, Titles.trending, Texts.subTitleOfTrending),
            buildImageRow(
              items: [
                ItemView(imagePaths: Images.img1, texts: Texts.lAndFS, isPro: true),
                ItemView(imagePaths: Images.img2, texts: Texts.bF, isPro: true),
                ItemView(imagePaths: Images.img3, texts: Texts.cC, isPro: false),
              ],
            ),
            buildHomeOption(context, Titles.newSection, Texts.subTitleOfNew),
            buildImageRow(
              items: [
                ItemView(imagePaths: Images.img4, texts: Texts.sS, isPro: false),
                ItemView(imagePaths: Images.img5, texts: Texts.cC, isPro: true),
                ItemView(imagePaths: Images.img5, texts: Texts.cC, isPro: false),
              ],
            ),
            SizedBox(height: 20),
            PromotionalBanner(),
            buildHomeOption(context, Titles.linkedinPortrait, ''), // Empty string for no subtitle
            buildImageRow(
              items: [
                ItemView(imagePaths: Images.img1, texts: Texts.cC, isPro: true),
                ItemView(imagePaths: Images.img2, texts: Texts.cC, isPro: true),
                ItemView(imagePaths: Images.img3, texts: Texts.cC, isPro: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHomeOption(BuildContext context, String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Mundial',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Mundial',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  Texts.seeAll,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Mundial',
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget buildImageRow({required List<ItemView> items}) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CustomImageContainer(
              imagePath: item.imagePaths,
              text: item.texts,
              textAlign: item.textAlign,
              showItemProButton: item.isPro,
            ),
          );
        },
      ),
    );
  }

}
class ItemView{
  final String imagePaths;
  final String texts;
  final TextAlign textAlign;
  final bool isPro;

  ItemView({
    required this.imagePaths,
    required this.texts,
    this.textAlign = TextAlign.start,
    this.isPro = false,
  });
}