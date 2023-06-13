import '../../view/Dashboard/home_screen.dart';
import '../../view/allpackages.dart';
import '../../view/reset_password/create_password.dart';

class Routes {
  static final routes = [
    // GetPage(name: '/', page: () => SplashScreen()),

    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/forgototp', page: () => ForgotOTPScreen()),
    GetPage(name: '/forgotpassword', page: () => ForgotPassword()),
    GetPage(name: '/createPassword', page: () => CreatenewPassword()),
    // GetPage(name: '/detailsScreen', page: () => DetailsScreen()),
    // GetPage(name: '/confirmScreen', page: () => ConfirmScreen()),
    // GetPage(name: '/orderPlaced', page: () => OrderPlacedScreen()),
  ];
}
