import 'package:flutter/material.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';

class UserScreen extends StatefulWidget {

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              flex: 2,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                      backgroundImage: AssetImage('assets/images/Maro.png'),
                    ),
                  SizedBox( width: 10.0 ,),
                  Expanded(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                              'Marwan Shams' ,
                            style: TextStyle(
                              fontSize: 25.0 ,
                              fontWeight: FontWeight.w900 ,
                            ),
                          ),
                          Text(
                              'VIP customer' ,
                            style: TextStyle(
                              fontSize: 15.0 ,
                              color: Colors.grey[500],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text(
                              'points : 3000' ,
                            style: TextStyle(
                              fontSize: 23.0 ,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email),
                      Text('marawanshm@gmail.com'),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      Text('01066388965'),
                    ],
                  ),
                ],
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                        'Wallet' ,
                      style: TextStyle(
                        fontSize: 20.0 ,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('200 LE')
                  ],
                )
              ],
            )
          ),
          Expanded(child: MaterialButton(onPressed:(){})),
          Expanded(child: MaterialButton(onPressed:(){})),
        ],
      );
  }
}


// NetworkImage('https://cdn.britannica.com/92/215392-050-96A4BC1D/Australian-actor-Chris-Hemsworth-2019.jpg')
