import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_bindings.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_page.dart';
import 'package:badlo/presentation/page/chat/chat_bindings.dart';
import 'package:badlo/presentation/page/chat/chat_page.dart';
import 'package:badlo/presentation/page/chat/owner_contact_bindings.dart';
import 'package:badlo/presentation/page/chat/owner_contact_page.dart';
import 'package:badlo/presentation/page/home/home_bindings.dart';
import 'package:badlo/presentation/page/home/home_page.dart';
import 'package:badlo/presentation/page/inspection/packages/inspection_packages_bindings.dart';
import 'package:badlo/presentation/page/inspection/packages/inspection_packages_page.dart';
import 'package:badlo/presentation/page/offer/place_offer_bindings.dart';
import 'package:badlo/presentation/page/offer/place_offer_page.dart';
import 'package:badlo/presentation/page/offer/result/offer_result_bindings.dart';
import 'package:badlo/presentation/page/offer/result/offer_result_page.dart';
import 'package:badlo/presentation/page/offer/view_offer/view_offer_bindings.dart';
import 'package:badlo/presentation/page/offer/view_offer/view_offer_page.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_bindings.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_page.dart';
import 'package:badlo/presentation/page/product/detail/product_detail_bindings.dart';
import 'package:badlo/presentation/page/product/detail/product_detail_page.dart';
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
      page: () => const ProductDetailPage(),
      binding: ProductDetailBindings(),
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
    GetPage(
      name: Routes.offerResult,
      page: () => const OfferResultPage(),
      binding: OfferResultBindings(),
    ),
    GetPage(
      name: Routes.inspectionPackages,
      page: () => const InspectionPackagesPage(),
      binding: InspectionPackagesBindings(),
    ),
  ];
}
