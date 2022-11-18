import 'package:http/http.dart' as http ;
import 'dart:convert';

class CRUD {
  getRequest(String url)async{
    try{
      var response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){                      //200 means that the page exists
        var responebody = jsonDecode(response.body);
        return responebody ;
      }else{
        print('Error is ${response.statusCode}');
      }
    }catch(e){
      print('Error catch $e');
    }
  }
  postRequest(String url , Map data)async{
    await Future.delayed(Duration(seconds: 3));
    try{
      var response = await http.post(Uri.parse(url) , body:data);
      if(response.statusCode == 200){
        var responebody = jsonDecode(response.body);
        return responebody ;
      }else{
        print('Error is ${response.statusCode}');
      }
    }catch(e){
      print('Error catch $e');
    }
  }
}