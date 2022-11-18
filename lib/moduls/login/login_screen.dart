import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';
import 'package:graduationapp/moduls/register/register_screen.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool is_obsecure = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Login' ,
                    style: TextStyle(
                      fontSize: 30.0 ,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 15,),
                  DefaultFormfield(
                      controller: emailcontroller,
                      inputtype: TextInputType.emailAddress,
                      Onsubmit: (value){
                        print(value);
                      },
                      validate:(value){
                        if(value!.isEmpty){
                          return 'email must be written';
                        }
                        return null ;
                      },
                      label: 'username',
                      preicon: Icons.account_circle
                  ),
                  const SizedBox(height: 10,),
                  DefaultFormfield(
                      controller: passwordcontroller,
                      inputtype:TextInputType.visiblePassword,
                      isPassword: is_obsecure,
                      Onsubmit: (value){
                        print(value);
                      },
                      validate: (value){
                        if (value!.isEmpty){
                          return 'Password must be written';
                        }
                      },
                      label: 'Password',
                      preicon: Icons.lock,
                      sufix: is_obsecure? Icons.visibility : Icons.visibility_off,
                      sufpressed:(){
                        setState(() {
                          is_obsecure = !is_obsecure ;
                        });
                      },
                  ),
                  const SizedBox(height: 20,),

                  DefaultButton(
                    backgroundcolor: Color(0xFFC2185B),
                      function: (){
                        if(formkey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeLayoutScreen())
                          );
                          print(emailcontroller.text);
                          print(passwordcontroller.text);
                        }
                        },
                      text: 'login'
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Text(
                          'You don\'t have an account ?',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16
                        ),
                      ),
                      TextButton(
                          onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder:(context) => RegisterScreen()
                                ),
                            );
                          }
                          , child: const Text(
                        'Sign UP Now',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
