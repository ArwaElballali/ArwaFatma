
import '../models/places.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Place> Display() async{
  final response = await http
  .get(Uri.parse('https://xyz.projectdemo.ly/api/app/cities/popular'));
  if(response.statusCode==200){
    return Place.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Failed to load album');
  }
}