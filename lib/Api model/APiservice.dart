import 'dart:convert';

import 'package:http/http.dart' as http;

import 'quotemodel.dart';

class ApiService {
  static Future<List<QuoteModel>> getData() async {
    try {
      var response = await http.get(Uri.parse("https://type.fit/api/quotes"));
      print(response.body);

      if (response.statusCode == 200) {
        List jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        return jsonResponse.map((data) => QuoteModel.fromJson(data)).toList();
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
// Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Stack(
            //     clipBehavior: Clip.none,
            //     children: [
            //       Container(
            //         height: MediaQuery.of(context).size.height * 0.3,
            //         width: double.infinity,
            //         decoration: BoxDecoration(
            //           color: Theme.of(context).cardColor,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 2,
            //               blurRadius: 2,
            //               offset:
            //                   const Offset(0, 0), // changes position of shadow
            //             ),
            //           ],
            //         ),
            //         child: Column(
            //           children: [
            //             const SizedBox(height: 40),
            //             Text(
            //               'Meditate',
            //               style: TextStyle(
            //                 color: Theme.of(context).buttonColor,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             const SizedBox(height: 5),
            //             Text(
            //               'Everyday learn new ways to focus',
            //               style:
            //                   TextStyle(color: Theme.of(context).buttonColor),
            //             ),
            //             const SizedBox(height: 5),
            //             Padding(
            //               padding: const EdgeInsets.only(
            //                   top: 10.0, left: 20, right: 20, bottom: 15),
            //               child: Container(
            //                 height: 125,
            //                 width: double.infinity,
            //                 decoration: BoxDecoration(
            //                     color: Colors.black.withOpacity(.1),
            //                     borderRadius: BorderRadius.circular(20)),
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.only(top: 15.0),
            //                       child: Text(
            //                         'Believe in something even if it means\nloosing everything',
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           color: Theme.of(context).buttonColor,
            //                         ),
            //                       ),
            //                     ),
            //                     const SizedBox(height: 10),
            //                     Container(
            //                       height: 5,
            //                       width: 70,
            //                       decoration: BoxDecoration(
            //                           color: Colors.orange,
            //                           borderRadius: BorderRadius.circular(10)),
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text('Warriors'),
            //                   ],
            //                 ),
            //               ),
            // //             )
            //           ],
            //         ),
            //       ),
            //       Positioned(
            // top: -20,
            // left: 40,
            // right: 40,
            // child: CircleAvatar(
            // backgroundImage: AssetImage(
            //   'assets/chakra.jpg',
            // ),
            // radius: 25,
            //           child: ClipOval(
            //             child: Image.asset('assets/chakra.jpeg'),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),