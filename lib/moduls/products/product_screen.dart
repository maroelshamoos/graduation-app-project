import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Categories'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(top: 13.0),
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        children: const [
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
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(top: 13.0),
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        children: const [
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
                        ],
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
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
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
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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

                          ],
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
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
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
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(top: 13.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: const [
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
