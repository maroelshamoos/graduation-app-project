import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationapp/moduls/cart/cart_screen.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';
import 'package:graduationapp/moduls/map/map_screen.dart';
import 'package:graduationapp/moduls/user/user_screen.dart';
import 'package:graduationapp/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>{

  AppCubit() : super(AppInitialState()) ;

  static AppCubit get(context) => BlocProvider.of(context);

  int currentindex = 0 ;
  bool isbottomsheetshown = false ;
  IconData fap = Icons.edit ;

  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    MapScreen(),
    UserScreen(),
  ];
  List<String>titles = [
    'Hello',
    'Cart',
    'Map',
    'Profile'
  ];

  List<BottomNavigationBarItem> Bottomitems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.map_outlined),
      label: 'Map',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      label: 'Profile',
    ),
  ];

  void changebottomnavbarindex (int index){
    currentindex = index ;
    emit(AppChangeBottomNavBarState());
  }

  void changebottomsheetstate ({
    required IconData icon ,
    required bool bottomshow ,
  }){
    fap = icon ;
    isbottomsheetshown = bottomshow ;
    emit(AppChangeBottomSheetState());
  }
}