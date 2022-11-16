import 'package:flutter/material.dart';
import 'package:graduationapp/moduls/login/login_screen.dart';
import 'package:graduationapp/moduls/register/register_screen.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        'SMART',
                        style: TextStyle(
                          fontSize: 48.0 ,
                          fontWeight: FontWeight.bold ,
                        ),
                      ),
                      Text(
                        'SuperMarketApp',
                        style: TextStyle(
                          fontSize: 23.0 ,
                          fontWeight: FontWeight.bold ,
                        ),
                      ),
                    ],
                  ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 16.0),
                        child: Column(
                          children: [
                            DefaultButton(
                              function:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen() ));
                              },
                              text: 'Login',
                              backgroundcolor: Color(0xFFC2185B),
                            ),
                            SizedBox(height: 10.0,),
                            DefaultButton(
                              function:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen() ));
                              },
                              text: 'Register',
                              backgroundcolor: Color(0xFFC2185B),
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
