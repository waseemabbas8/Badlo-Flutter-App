import 'package:get/get.dart';

import '../../core/route/routes.dart';
import '../../page/auth/signup/sign_up_bindings.dart';
import '../../page/auth/signup/sign_up_page.dart';
import '../../page/category/categories_list_bindings.dart';
import '../../page/category/categories_list_page.dart';
import '../../page/chat/chat_bindings.dart';
import '../../page/chat/chat_page.dart';
import '../../page/chat/conversation/conversations_bindings.dart';
import '../../page/chat/conversation/conversations_page.dart';
import '../../page/chat/owner_contact_bindings.dart';
import '../../page/chat/owner_contact_page.dart';
import '../../page/home/home_bindings.dart';
import '../../page/home/home_page.dart';
import '../../page/inspection/packages/inspection_packages_bindings.dart';
import '../../page/inspection/packages/inspection_packages_page.dart';
import '../../page/map/place_picker_bindings.dart';
import '../../page/map/place_picker_page.dart';
import '../../page/notifications/notifications_page.dart';
import '../../page/offer/place_offer_bindings.dart';
import '../../page/offer/place_offer_page.dart';
import '../../page/offer/result/offer_result_bindings.dart';
import '../../page/offer/result/offer_result_page.dart';
import '../../page/offer/view_offer/view_offer_bindings.dart';
import '../../page/offer/view_offer/view_offer_page.dart';
import '../../page/onboarding/onboarding_bindings.dart';
import '../../page/onboarding/onboarding_page.dart';
import '../../page/product/add/add_product_bindings.dart';
import '../../page/product/add/add_product_page.dart';
import '../../page/product/detail/product_detail_bindings.dart';
import '../../page/product/detail/product_detail_page.dart';
import '../../page/product/list/products_list_bindings.dart';
import '../../page/product/list/products_list_page.dart';
import '../../page/profile/dashboard/profile_dashboard_bindings.dart';
import '../../page/profile/dashboard/profile_dashboard_page.dart';
import '../../page/profile/profile_bindings.dart';
import '../../page/profile/profile_page.dart';
import '../../page/splash/splash_bindings.dart';
import '../../page/splash/splash_page.dart';
import '../../page/notifications/notifications_bindings.dart';

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
    GetPage(
      name: Routes.addEditProduct,
      page: () => const AddProductPage(),
      binding: AddProductBindings(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: Routes.profileDashboard,
      page: () => const ProfileDashboardPage(),
      binding: ProfileDashboardBindings(),
    ),
    GetPage(
      name: Routes.selectAddress,
      page: () => const PlacePickerPage(),
      binding: PlacePickerBindings(),
    ),
    GetPage(
      name: Routes.productsList,
      page: () => const ProductsListPage(),
      binding: ProductsListBindings(),
    ),
    GetPage(
      name: Routes.notifications,
      page: () => const NotificationsPage(),
      binding: NotificationsBindings(),
    ),
    GetPage(
      name: Routes.conversations,
      page: () => const ConversationsPage(),
      binding: ConversationsBindings(),
    ),
    GetPage(
      name: Routes.categories,
      page: () => const CategoriesListPage(),
      binding: CategoriesListBindings(),
    ),
  ];
}
