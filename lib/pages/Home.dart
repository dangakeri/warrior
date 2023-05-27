import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import '../consts/app_colors.dart';
import 'focus_page.dart';
import 'home_page.dart';
import 'quote_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List pages = [
    const HomePage(),
    const QuotePage(),
    // const IkigaiPage(),
    const FocusPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flourescent),
            label: 'Meditate',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(BootstrapIcons.quote),
          //   label: 'Quote',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            label: 'Ikigai',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.dash_circle_dotted),
            label: 'Focus',
          ),
        ],
      ),
    );
  }
}
