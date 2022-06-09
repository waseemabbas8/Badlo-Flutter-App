import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/offer/result/offer_result_controller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferResultPage extends BasePage<OfferResultController> {
  const OfferResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          AppbarWidget(title: '', onBackPress: controller.onBackPressed),
          Expanded(child: Container()),
          Icon(controller.resultIcon, size: 60.toWidth, color: controller.iconColor),
          Spacing.v30,
          Text('Your offer has been accepted', style: Get.textTheme.subtitle2),
          Expanded(child: Container()),
          _buttons,
          Spacing.v30,
        ],
      ),
    );
  }

  Widget get _offerAcceptedActionButtons => Padding(
        padding: Margin.h20,
        child: Row(
          children: [
            Expanded(
              child: ContainedButton(
                text: 'Verify Product',
                onPressed: controller.onVerifyButtonPressed,
              ),
            ),
            Spacing.h16,
            Expanded(
              child: ContainedButton(
                text: 'Joao Badlo!',
                onPressed: controller.onJaoBadloButtonPressed,
              ),
            ),
          ],
        ),
      );

  Widget get _offerDeclinedActionButtons => Center(
        child: ContainedButton(
          text: 'Make New Offer',
          onPressed: controller.onMakeNewOfferButtonPressed,
          width: 100.toWidth,
        ),
      );

  Widget get _buttons => true ? _offerAcceptedActionButtons : _offerDeclinedActionButtons;
}
