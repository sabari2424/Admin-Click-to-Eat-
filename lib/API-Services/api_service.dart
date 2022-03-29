import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitled/model/login_model.dart';
import 'package:untitled/modules/signup.dart';
class APIService
{
   Future<LoginResponseModel>login(LoginRequestModel requestModel)async
   {
     String url="https://reqres.in/api/login";
     final response=await http.post(Uri.parse("https://reqres.in/api/login"),body:requestModel.toJson() );
     if(response.statusCode==200|| response.statusCode==300){
       return LoginResponseModel.fromJson(json.decode(response.body));
     }else{
       throw Exception("failed");
     }
   }


}
class callAPI{
  static signup(Map<String, dynamic> data) async {
    return await http.post(Uri.parse("http://localhost:8809/api/v1/updateProfile"),body:jsonEncode(data),
    headers: setheaders(),
    );

  }

  static setheaders() =>{
    "key": "Content-Type",
    "value": "application/json"
  };

}