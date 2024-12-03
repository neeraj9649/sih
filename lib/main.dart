import 'package:dash_board/Provider/Screen10_Provider.dart';
import 'package:dash_board/Provider/Screen6_Provider.dart';
import 'package:dash_board/Provider/Screen7_Provider.dart';
import 'package:dash_board/Provider/Screen8_Provider.dart';
import 'package:dash_board/Provider/Screen9_Provider.dart';
import 'package:dash_board/Screen/Auth/SignUp_Screen.dart';
import 'package:dash_board/Screen/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Screen_list.dart/Screen_list.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen6.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Screen6Provider()),
          ChangeNotifierProvider(create: (_) => Screen7Provider()),
          ChangeNotifierProvider(create: (_) => Screen8Provider()),
          ChangeNotifierProvider(create: (_) => Screen9Provider()),
          ChangeNotifierProvider(create: (_) => Screen10Provider()),
          // ChangeNotifierProvider(create: (_) => DatePickerProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: appbarColor, foregroundColor: Colors.white),
            colorScheme: ColorScheme.fromSeed(seedColor: appbarColor),
            useMaterial3: true,
          ),
          // home: DashboardScreen(),
          // home: Screen6(),
          home: SignUpScreen(),
        ),
      ),
    );
  }
}
