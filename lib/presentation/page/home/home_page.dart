import 'package:badlo/presentation/core/values/colors.dart';
import 'package:flutter/material.dart';

import '../../core/base/base_page.dart';
import 'home_controller.dart';

class HomePage extends BasePage<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWindowBackground,
      body: Stack(
        children: [
          Column(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
