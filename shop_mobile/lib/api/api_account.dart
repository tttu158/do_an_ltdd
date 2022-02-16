import 'dart:convert';

import 'package:do_an/models/account.dart';

import 'package:http/http.dart' as http;

String url = 'http://10.0.2.2:8000/api/user/';


Future<Account?> information(int id, ) async {
  var uri=url+'$id';
  try{
    final response=await http.get(Uri.parse(uri));
    if(response.statusCode==200){
      Account ac=Account.fromJson(jsonDecode(response.body));
      return ac;
    }
    
  }catch(_){}
}
