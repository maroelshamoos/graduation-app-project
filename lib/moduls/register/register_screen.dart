import 'package:flutter/material.dart';
import 'package:graduationapp/layout/home_layout.dart';
import 'package:graduationapp/moduls/home/home_screen.dart';
import 'package:graduationapp/shared/componantes/componantes.dart';
import 'package:graduationapp/shared/componantes/constants.dart';
import 'package:graduationapp/shared/componantes/crud.dart';

class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool is_obsecure = true ;
  var fnamecontroller = TextEditingController();
  var lnamecontroller = TextEditingController();
  var usernamecontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var citycontroller = TextEditingController();
  var countrycontroller = TextEditingController();
  var agecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  CRUD crud = CRUD();
  signup()async{
    var response = await crud.postRequest(linksignup, {
      "firstname": fnamecontroller.text,
      "lastname": lnamecontroller.text,
      "username": usernamecontroller.text,
      "password": passcontroller.text,
      "email": emailcontroller.text,
      "city": citycontroller.text,
      "country": countrycontroller.text,
      "age": agecontroller.text,
      "phone": phonecontroller.text,
    });
    if (response['status']=='success'){
      Navigator.of(context).pushNamedAndRemoveUntil('Home', (route) => false);
    }else{
      print('sign up failed');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN UP'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey ,
            child: Column(
              children: [
                DefaultFormfield(
                    controller: fnamecontroller,
                    inputtype: TextInputType.text,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'first name must be written';
                      }
                    },
                    label: 'firstname',
                    preicon: Icons.drive_file_rename_outline_rounded
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: lnamecontroller,
                    inputtype: TextInputType.text,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'last name must be written';
                      }
                    },
                    label: 'lastname',
                    preicon: Icons.drive_file_rename_outline_rounded
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: usernamecontroller,
                    inputtype: TextInputType.text,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'username must be written';
                      }
                    },
                    label: 'username',
                    preicon: Icons.account_box
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                  controller: passcontroller,
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
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: emailcontroller,
                    inputtype: TextInputType.emailAddress,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'email must be written';
                      }
                    },
                    label: 'email',
                    preicon: Icons.email
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: citycontroller,
                    inputtype: TextInputType.text,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'city must be written';
                      }
                    },
                    label: 'city',
                    preicon: Icons.location_city_outlined
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: countrycontroller,
                    inputtype: TextInputType.text,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'country must be written';
                      }
                    },
                    label: 'country',
                    preicon: Icons.location_city_outlined
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: agecontroller,
                    inputtype: TextInputType.phone,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'age must be written';
                      }
                    },
                    label: 'age',
                    preicon: Icons.calendar_today_sharp
                ),
                const SizedBox(height:10.0 ,),
                DefaultFormfield(
                    controller: phonecontroller,
                    inputtype: TextInputType.phone,
                    validate:(value){
                      if(value!.isEmpty){
                        return 'phone number must be written';
                      }
                    },
                    label: 'phone',
                    preicon: Icons.phone
                ),
                const SizedBox(height:10.0 ,),
                Container(
                  width: double.infinity,
                  child:DefaultButton(
                      backgroundcolor: Color(0xFFC2185B),
                      function: () async {
                        if(formkey.currentState!.validate()){
                          await signup();
                        }
                      },
                      text: 'signup'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
