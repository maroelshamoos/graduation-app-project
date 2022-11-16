import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';

class CartScreen extends StatefulWidget {

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context , index) => buildCartItems(),
                separatorBuilder:(context , index) => Container(
                  height: 1.0,
                  color: Colors.grey[300],
                  width: double.infinity,
                ),
                itemCount:10),
            SizedBox(height: 10.0,),
            DefaultButton(function:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayoutScreen()));
            },

                text: 'Pay Now',
              backgroundcolor: Colors.greenAccent ,
            )
          ],
        ),
      ),
    );
  }

  Widget buildCartItems ()=>
     SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircleAvatar(
                radius: 40.0,
                child: Image(image: AssetImage('assets/images/1560108-01.png'))
            ),
            SizedBox(width: 10.0,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'chipsy with cheese',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  'price : 25 EGP',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
              width: 1.0,
              height: 80.0,
              color: Colors.grey[300],
            ),
            Text(
              'Qty : 4 ',
              style: TextStyle(
                fontSize: 20.0 ,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
    );
  }
