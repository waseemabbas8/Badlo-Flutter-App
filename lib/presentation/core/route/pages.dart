import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_bindings.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_page.dart';
import 'package:badlo/presentation/page/chat/chat_bindings.dart';
import 'package:badlo/presentation/page/chat/chat_page.dart';
import 'package:badlo/presentation/page/chat/owner_contact_bindings.dart';
import 'package:badlo/presentation/page/chat/owner_contact_page.dart';
import 'package:badlo/presentation/page/e_product_detail/eproduct_detail_bindings.dart';
import 'package:badlo/presentation/page/e_product_detail/eproduct_detail_page.dart';
import 'package:badlo/presentation/page/home/home_bindings.dart';
import 'package:badlo/presentation/page/home/home_page.dart';
import 'package:badlo/presentation/page/offer/place_offer_bindings.dart';
import 'package:badlo/presentation/page/offer/place_offer_page.dart';
import 'package:badlo/presentation/page/offer/view_offer/view_offer_bindings.dart';
import 'package:badlo/presentation/page/offer/view_offer/view_offer_page.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_bindings.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_page.dart';
import 'package:badlo/presentation/page/splash/splash_bindings.dart';
import 'package:badlo/presentation/page/splash/splash_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.launch,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.eProductDetail,
      page: () => const EProductDetailPage(),
      binding: EProductDetailBindings(),
    ),
    GetPage(
      name: Routes.onBoarding,
      page: () => const OnBoardingPage(),
      binding: OnBoardingBindings(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => SignUpPage(),
      binding: SignUpBindings(),
    ),
    GetPage(
      name: Routes.placeAnOffer,
      page: () => const PlaceOfferPage(),
      binding: PlaceOfferBindings(),
    ),
    GetPage(
      name: Routes.ownerContact,
      page: () => const OwnerContactPage(),
      binding: OwnerContactBindings(),
    ),
    GetPage(
      name: Routes.chat,
      page: () => const ChatPage(),
      binding: ChatBindings(),
    ),
    GetPage(
      name: Routes.viewAllOffer,
      page: () => const ViewOfferPage(),
      binding: ViewOfferBindings(),
    ),
  ];
}
