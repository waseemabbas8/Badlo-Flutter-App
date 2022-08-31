import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/map/place_picker_controller.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacePickerPage extends BasePage<PlacePickerController> {
  const PlacePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: controller.kGooglePlex,
            onMapCreated: controller.onMapCreated,
            onCameraMove: controller.onCameraMove,
            onCameraIdle: controller.onCameraIdle,
          ),
          Positioned(
            top: Get.mediaQuery.viewPadding.top + 25.toHeight,
            left: 20.toWidth,
            child: InkWell(
              onTap: controller.onBackPressed,
              child: const Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            top: Get.mediaQuery.viewPadding.top + 10.toHeight,
            left: 60.toWidth,
            child: SizedBox(
              width: Get.width - 80.toWidth,
              height: 50.toHeight,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: Margin.h16,
                  child: Row(
                    children: [
                      Obx(
                        () => Text(
                          controller.address,
                          style: Get.textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset('${ImagesPath.basePath}ic_location.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80.toHeight),
              child: ContainedButton(
                onPressed: controller.onPickPlaceButtonClick,
                text: 'Pick this Place',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
