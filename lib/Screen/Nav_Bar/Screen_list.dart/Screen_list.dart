import 'package:dash_board/Screen/Nav_Bar/Coach_screen/Coach_screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Community_screen/Community_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Home_screen/Home_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Plus_screen/Plus_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Shop_screen/Shop_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  HomeScreen(),
  ShopScreen(),
  PlusScreen(),
  CoachScreen(),
  CommunityScreen(),
];
