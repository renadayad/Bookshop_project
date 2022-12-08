import 'package:bookshop/Logic/Bindings/auth_binding.dart';
import 'package:bookshop/Routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Ubuntu'),

          // initialRoute: FirebaseAuth.instance.currentUser != null ||
          //         GetStorage().read<bool>("auth") == true
          //     ? Routes.customerHome
          //     : AppRoutes.login,

          initialRoute: Routes.loginScreen,

          getPages: AppRoutes.routes,
          initialBinding: AuthBinding(),
        );
      },
    );
  }
}
