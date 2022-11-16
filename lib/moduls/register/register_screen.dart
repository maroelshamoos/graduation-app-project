import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';

class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool is_obsecure = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Username' ,
                ),
              ),
              const SizedBox(height:10.0 ,),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.drive_file_rename_outline_rounded),
                  labelText: 'Fullname' ,
                ),
              ),
              const SizedBox(height:10.0 ,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email' ,
                ),
              ),
              const SizedBox(height:10.0 ,),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'PhoneNumber' ,
                ),
              ),
              const SizedBox(height:10.0 ,),
              TextFormField(
                obscureText: is_obsecure ,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed:(){
                        setState(() {
                          is_obsecure = !is_obsecure ;
                        });
                      } ,
                      icon: const Icon(Icons.remove_red_eye)),
                  labelText: 'Password' ,
                ),
              ),
              const SizedBox(height:10.0 ,),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Color(0xFFC2185B),
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context) => HomeLayoutScreen()
                        )
                    );
                  }
                  ,child:const Text(
                  'Register' ,
                  style: TextStyle(
                    color: Colors.white ,
                    fontSize: 20.0 ,
                  ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
