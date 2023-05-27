import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'quotemodel.dart';

class ApiService {
  // static Future<List<QuoteModel>> getData() async {
  //   try {
  //     var response = await http.get(Uri.parse("https://type.fit/api/quotes"));
  //     // print(response.body);

  //     if (response.statusCode == 200) {
  //       List jsonResponse = jsonDecode(response.body);
  //       // print(jsonResponse);
  //       return jsonResponse.map((data) => QuoteModel.fromJson(data)).toList();
  //     } else {
  //       throw Exception("Something Wrong Happened");
  //     }
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }
  static Future<List<QuoteModel>> getData() async {
    // Use try catch
    try {
      // make initial Api call
      var response = await http.get(Uri.parse('https://type.fit/api/quotes'));
      // handle the response
      if (response.statusCode == 200) {
        // parse data
        List jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        return jsonResponse.map((data) => QuoteModel.fromJson(data)).toList();
      } else {
        throw Exception('Something Went Wrong');
      }
    } catch (e) {
      // catch the exception
      print(e);
      throw Exception('Something Went Wrong');
    }
  }
}
