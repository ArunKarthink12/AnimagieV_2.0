import 'dart:developer';

import 'package:doctorapp/view/allpackages.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkLogin();

  runApp(const MyApp());
}

String? token;
checkLogin() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  token = sharedPreferences.getString(Constants.token);
  log('tokeen');
  log(token.toString());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('tokennnnn----${token}');

    return GetMaterialApp(
      getPages: Routes.routes,
      theme: new ThemeData(scaffoldBackgroundColor: bgcolor),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
