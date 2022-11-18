import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/moduls/cart/cart_screen.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';
import 'package:sqflite/sqflite.dart';

class ListScreen extends StatefulWidget {
  @override
  // TODO: implement key
  Key? get key => super.key;

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  int quantity = 0 ;
  int quantity_1 = 0 ;
  int quantity_2 = 0 ;
  int quantity_3 = 0 ;
  int quantity_4 = 0 ;
  int quantity_5 = 0 ;
  int quantity_6 = 0 ;
  int quantity_7 = 0 ;
  int quantity_8 = 0 ;
  int quantity_9 = 0 ;
  late Database database;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(top: 13.0),
                      height: 280.0,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/1560108-01.png'),
                            height: 90.0,
                            width: 90.0,
                          ),
                          SizedBox(height: 15.0,),
                          Text(
                            'Chipsy Cheese Potato Chips',
                            style: TextStyle(
                              fontSize: 15.0 ,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'quantity left = 4',
                            style: TextStyle(
                              fontSize: 15.0 ,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Quantity',
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.bold ,
                                  ),
                                ),
                                Text(
                                  '${quantity}',
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.w900 ,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          quantity-- ;
                                        });
                                      },
                                      heroTag: 'quantity -',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          quantity ++ ;
                                        });
                                      },
                                      heroTag: 'quantity +',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                SizedBox(width: 10.0,),
                Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(top: 13.0),
                      height: 280.0,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/pepsi.png'),
                            height: 90.0,
                            width: 90.0,
                          ),
                          SizedBox(height: 15.0,),
                          Text(
                            'Pepsi Can',
                            style: TextStyle(
                              fontSize: 15.0 ,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'quantity left = 4',
                            style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Quantity',
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.bold ,
                                  ),
                                ),
                                Text(
                                  '${quantity_1}',
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.w900 ,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          quantity_1-- ;
                                        });
                                      },
                                      heroTag: 'quantity -',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          quantity_1 ++ ;
                                        });
                                      },
                                      heroTag: 'quantity +',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10.0) ,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/1560108-01.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Chipsy Cheese Potato Chips',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_2}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_2-- ;
                                          });
                                        },
                                        heroTag: 'quantit -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_2 ++ ;
                                          });
                                        },
                                        heroTag: 'quantit +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  SizedBox(width: 10.0,),
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/pepsi.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Pepsi Can',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                  fontSize: 15.0 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_3}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_3-- ;
                                          });
                                        },
                                        heroTag: 'quanti -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_3 ++ ;
                                          });
                                        },
                                        heroTag: 'quanti +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10.0) ,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/1560108-01.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Chipsy Cheese Potato Chips',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_4}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_4-- ;
                                          });
                                        },
                                        heroTag: 'quant -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_4 ++ ;
                                          });
                                        },
                                        heroTag: 'quant +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  SizedBox(width: 10.0,),
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/pepsi.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Pepsi Can',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                  fontSize: 15.0 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_5}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_5-- ;
                                          });
                                        },
                                        heroTag: 'quan -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_5 ++ ;
                                          });
                                        },
                                        heroTag: 'quan +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10.0) ,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/1560108-01.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Chipsy Cheese Potato Chips',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_6}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_6-- ;
                                          });
                                        },
                                        heroTag: 'qua -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_6 ++ ;
                                          });
                                        },
                                        heroTag: 'qua +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  SizedBox(width: 10.0,),
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/pepsi.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Pepsi Can',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                  fontSize: 15.0 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_7}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_7-- ;
                                          });
                                        },
                                        heroTag: 'qu -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_7 ++ ;
                                          });
                                        },
                                        heroTag: 'qu +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10.0) ,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/1560108-01.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Chipsy Cheese Potato Chips',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_8}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_8-- ;
                                          });
                                        },
                                        heroTag: 'q -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_8 ++ ;
                                          });
                                        },
                                        heroTag: 'q +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  SizedBox(width: 10.0,),
                  Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 13.0),
                        height: 280.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/pepsi.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              'Pepsi Can',
                              style: TextStyle(
                                fontSize: 15.0 ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'quantity left = 4',
                              style: TextStyle(
                                  fontSize: 15.0 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.bold ,
                                    ),
                                  ),
                                  Text(
                                    '${quantity_9}',
                                    style: TextStyle(
                                      fontSize: 20.0 ,
                                      fontWeight: FontWeight.w900 ,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_9-- ;
                                          });
                                        },
                                        heroTag: ' -',
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        onPressed:(){
                                          setState(() {
                                            quantity_9 ++ ;
                                          });
                                        },
                                        heroTag: ' +',
                                        mini: true,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5.0,),
            DefaultButton(
                function: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>HomeLayoutScreen() )
                  );
                },
                text:'Add To Cart',
              backgroundcolor: Colors.greenAccent
            )
          ],
        ),
      ),
    );
  }

  void createdatabase () async {
    database = await openDatabase(
        'product.db',
        version: 1 ,
        onCreate: (database , version){
          print('database is created');
          database.execute(
              'CREATE TABLE products(pid INTEGER PRIMARY KEY ,pname TEXT ,psize TEXT ,ptype TEXT ,productiondate TEXT ,expiredate Text ,quantity INTEGER )'
          ).then((value){
            print('table is created');
          }).catchError((error){
            print('error when create table${error.toString()}');
          });
        },
        onOpen: (database){
          print('database is opened');
        }
    );
  }
  void insertindatabase (){
    database.transaction((txn) async{
      await txn.rawInsert(
          'INSERT INTO products(pname ,psize ,ptype ,productiondate ,expiredate ,quantity ) VALUES ("chipsy","familysize","HOT AND LEMMON" ,"25/10/2000" , "25102005" , 5)'
      ).then((value){
        print('$value raw is created');
      }).catchError((error){
        print('error when insertin raw${error.toString()}');
      });
    });
  }
}

