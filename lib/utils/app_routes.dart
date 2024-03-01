import 'package:chat_app/screen/contact/view/contact_screen.dart';
import 'package:chat_app/screen/home/view/home_screen.dart';
import 'package:chat_app/screen/login/view/sigin.dart';
import 'package:chat_app/screen/login/view/signup.dart';
import 'package:chat_app/screen/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

import '../screen/splesh/view/splesh_screen.dart';

Map<String,WidgetBuilder> app_routes =
{
  '/' : (context) => const SplashScreen(),
  'signIn' : (context) => const SignInScreen(),
  'signUp' : (context) => const SignUpScreen(),
  'home' : (context) => const HomeScreen(),
  'profile' : (context) => const ProfileScreen(),
  'contact' : (context) => const ContactScreen(),
};