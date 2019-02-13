import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shopping/src/model/book.dart';

class ApiHelper {
  Future<List<Book>> fetchAllItems() async {
    const url = "http://192.168.0.3:4000/api/shop/";
    final response = await http.get(url);
    final jsonbody = json.decode(response.body);
//    compute(jsonbody,parsingItems);
    return jsonbody['shops']
        .map((shop) => Book.fromJson(shop))
        .toList()
        .cast<Book>();
  }
}
