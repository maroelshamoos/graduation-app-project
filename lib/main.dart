import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/moduls/cart/cart_screen.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';
import 'package:graduationapp/moduls/login/login_screen.dart';
import 'package:graduationapp/moduls/register/register_screen.dart';
import 'package:graduationapp/moduls/splash/splash_screen.dart';
import 'package:graduationapp/moduls/user/user_screen.dart';
import 'package:graduationapp/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white ,
            statusBarIconBrightness: Brightness.dark ,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black ,
            fontSize: 20.0 ,
            fontWeight: FontWeight.bold ,
          ),
          backgroundColor: Colors.white ,
          elevation: 0.0 ,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed ,
          selectedItemColor: Color(0xFFC2185B),
          elevation: 20.0,
        ),
      ),
      home:SplashScreen()
    );
  }
}
