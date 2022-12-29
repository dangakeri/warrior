import 'package:flutter/material.dart';

import '../Api model/APiservice.dart';
import '../Api model/quotemodel.dart';
import '../widgets/Pageview_container_widget.dart';
import 'package:http/http.dart' as http;

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  late Future<List<QuoteModel>> quoteData;
  @override
  void initState() {
    super.initState();
    quoteData = ApiService.getData();
    print(quoteData);
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);

    int pageChanged = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (index) {
          setState() {
            pageChanged = index;
          }
        },
        children: [
          const PageviewContainerWidget(
            text:
                'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
            image: 'assets/Muamar.png',
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder<List<QuoteModel>>(
                    future: quoteData,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      }

                      return ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return const PageviewContainerWidget(
                              image: 'assets/Muamar.png', text: '');
                        },
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
