import 'package:badlo/presentation/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/values/dimens.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imageUrls = [placeholderImage, placeholderImage, placeholderImage];

    return Scaffold(
      body: Column(
        children: [
          imageSlider(),
          const SizedBox(
            height: spacing16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Leather Sofa',
                style: Get.textTheme.bodyText2,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget imageSlider() => SizedBox(
        width: Get.width,
        height: 419,
        child: Stack(
          children: [
            Container(
              child: Image.network(
                placeholderImage,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: spacing16, vertical: spacing40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImagesPath.menu),
                  Image.asset(ImagesPath.bookmark)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: spacing10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.chevronLeft,
                      color: Colors.white,
                    ),
                    Text(
                      '1',
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    Image.asset(
                      ImagesPath.chevronRight,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
