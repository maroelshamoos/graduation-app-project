import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationapp/moduls/cart/cart_screen.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';
import 'package:graduationapp/moduls/list/list_screen.dart';
import 'package:graduationapp/moduls/map/map_screen.dart';
import 'package:graduationapp/moduls/notification/notification_screen.dart';
import 'package:graduationapp/moduls/user/user_screen.dart';
import 'package:graduationapp/shared/cubit/cubit.dart';
import 'package:graduationapp/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayoutScreen extends StatelessWidget {

  late Database database;
  var scaffoldkey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit , AppStates>(
        listener: (context , state){},
        builder: (context , state){

          var cubit = AppCubit.get(context);

          return  Scaffold(
            key: scaffoldkey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentindex],
              ),
              actions: [
                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> NotificationScreen() ));
                }
                    , icon: Icon(Icons.notification_important)),
              ],
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Color(0xFFC2185B),
                mini: true,
                child: Icon(cubit.fap),
                onPressed:(){
                  if (cubit.isbottomsheetshown){
                    Navigator.pop(context);
                    cubit.changebottomsheetstate(icon:  Icons.edit , bottomshow: false);
                  }
                  else{
                    scaffoldkey.currentState?.showBottomSheet((context)=>
                        Container(
                          color: Colors.red,
                        )
                    );
                    cubit.changebottomsheetstate(icon:  Icons.add , bottomshow:  true );
                  }
                }) ,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentindex ,
              onTap: (index){
                cubit.changebottomnavbarindex(index);
              },
              items: cubit.Bottomitems,
            ),
            body: cubit.screens[cubit.currentindex] ,
          );
        },
      ),
    );
  }

// void createdatabase () async {
//   database = await openDatabase(
//     'product.db',
//     version: 1 ,
//     onCreate: (database , version){
//       print('database is created');
//       database.execute(
//           'CREATE TABLE products(pid INTEGER PRIMARY KEY ,pname TEXT ,psize TEXT ,ptype TEXT ,productiondate TEXT ,expiredate Text ,quantity INTEGER )'
//       ).then((value){
//         print('table is created');
//       }).catchError((error){
//         print('error when create table${error.toString()}');
//       });
//     },
//     onOpen: (database){
//       print('database is opened');
//     }
//   );
// }
// void insertindatabase (){
//   database.transaction((txn) async{
//     await txn.rawInsert(
//         'INSERT INTO products(pname ,psize ,ptype ,productiondate ,expiredate ,quantity ) VALUES ("chipsy","familysize","HOT AND LEMMON" ,"25/10/2000" , "25102005" , 5)'
//     ).then((value){
//       print('$value raw is created');
//     }).catchError((error){
//       print('error when insertin raw${error.toString()}');
//     });
//   });
// }
}

