import 'package:flutter/material.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/components/components.dart';
import 'package:walt/components/image_path.dart';

class OnBoardingComponent extends StatelessWidget {
  const OnBoardingComponent({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.description,
    required this.activeDot,
    required this.pageCount,
    required this.onPressed,
  }) : super(key: key);
  final String backgroundImage;
  final String title;
  final String description;
  final int activeDot;
  final int pageCount;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(backgroundImage),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100.0, bottom: 50, left: 34, right: 34),
            child: Column(
              children: [
                const Image(
                  image: AssetImage(ImagePath.w),
                ),
                const Spacer(),
                const Image(
                  image: AssetImage(ImagePath.vw),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: primaryColor.withOpacity(
                      .8,
                    ),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                dotIndicator(
                  dotCount:
                      pageCount,
                  activeDot: activeDot,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Image(
                  image: AssetImage(ImagePath.group13),
                ),
                const SizedBox(
                  height: 30,
                ),
                buildElevatedButton(
                  onPrimary: white,
                  height: 44.0,
                  width: double.infinity,
                  text:
                      (pageCount-1)==activeDot
                          ? 'get started'
                          : 'next',
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        );
  }
}
