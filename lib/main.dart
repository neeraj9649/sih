import 'package:dash_board/Provider/Age_conformation_provider.dart';
import 'package:dash_board/Provider/CheckBox_State_provider.dart';
import 'package:dash_board/Provider/Community_provider.dart';
import 'package:dash_board/Provider/Float_screen1_provider.dart';
import 'package:dash_board/Provider/Screen10_Provider.dart';
import 'package:dash_board/Provider/Screen6_Provider.dart';
import 'package:dash_board/Provider/Screen7_Provider.dart';
import 'package:dash_board/Provider/Screen8_Provider.dart';
import 'package:dash_board/Provider/Screen9_Provider.dart';
import 'package:dash_board/Provider/coach_Screen_Slide_Provider.dart';
import 'package:dash_board/Provider/quiz_provider.dart';
import 'package:dash_board/Screen/Auth/SignUp_Screen.dart';
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
          ChangeNotifierProvider(create: (_) => CommunityProvider()),
          ChangeNotifierProvider(create: (_) => Floatscreen1Provider()),
          ChangeNotifierProvider(create: (_) => CheckboxState()),
          ChangeNotifierProvider(create: (_) => CoachScreenSlideProvider()),
          ChangeNotifierProvider(create: (_) => Screen6Provider()),
          ChangeNotifierProvider(create: (_) => Screen7Provider()),
          ChangeNotifierProvider(create: (_) => Screen8Provider()),
          ChangeNotifierProvider(create: (_) => Screen9Provider()),
          ChangeNotifierProvider(create: (_) => Screen10Provider()),
          ChangeNotifierProvider(create: (_) => AgeConformationProvider()),
          ChangeNotifierProvider(create: (_) => QuizProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: appbarColor,
                foregroundColor: const Color(0xFFE2F1E7)),
            colorScheme: ColorScheme.fromSeed(seedColor: appbarColor),
            useMaterial3: true,
          ),
          home: SignUpScreen(),
        ),
      ),
    );
  }
}
