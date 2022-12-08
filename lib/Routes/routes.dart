import 'package:bookshop/Logic/Bindings/auth_binding.dart';
import 'package:bookshop/View/Screens/admin/Add_product_form_screen.dart';
import 'package:bookshop/View/Screens/admin/stock_screen.dart';
import 'package:bookshop/View/Screens/forgot_password_screen.dart';
import 'package:bookshop/View/Screens/login_screen.dart';
import 'package:bookshop/View/Screens/setting/edit_profile_screen.dart';
import 'package:bookshop/View/Screens/setting/profile.dart';
import 'package:bookshop/View/Screens/setting/settings_screen.dart';
import 'package:bookshop/View/Screens/signup_screen.dart';
import 'package:bookshop/View/Screens/user/customer_home.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const login = Routes.loginScreen;

  static const stock = Routes.stockScreen;
  static const addProduct = Routes.loginScreen;
  static const customerHome = Routes.customerHome;
  static final routes = [
    GetPage(
        name: Routes.loginScreen,
        page: () => Login_Screen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.signScreen,
        page: () => SignUpScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgotpasswordScreen,
        page: () => ForgotPasswordScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.editProfileScreen,
        page: () => EditProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.settingsScreen,
        page: () => SettingScreen(),
        binding: AuthBinding()),
    GetPage(name: Routes.stockScreen, page: () => StockScreen()),
    GetPage(name: Routes.addProductForm, page: () => AddProductFromScreen()),
    GetPage(name: Routes.customerHome, page: () => CustomerHome()),
  ];
}

class Routes {
  static const loginScreen = '/loginScreen';
  static const signScreen = '/signScreen';
  static const forgotpasswordScreen = '/forgotpasswordScreen';
  static const profileScreen = '/profileScreen';
  static const editProfileScreen = '/editProfileScreen';
  static const settingsScreen = '/settingsScreen';

  static const stockScreen = '/StockScreen';
  static const addProductForm = '/AddProductFromScreen';
  static const editProduct = '/EditProductScreen';
  static const customerHome = '/CustomerHome';
}
