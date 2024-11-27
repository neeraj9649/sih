import 'package:dash_board/Screen/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: appbarColor, foregroundColor: Colors.white),
          colorScheme: ColorScheme.fromSeed(seedColor: appbarColor),
          useMaterial3: true,
        ),
        home: DashboardScreen(),
      ),
    );
  }
}
