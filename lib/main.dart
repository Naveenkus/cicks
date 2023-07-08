import 'package:cicks/pages/cart.dart';
import 'package:cicks/pages/homepage.dart';
import 'package:cicks/pages/profile.dart';
import 'package:cicks/pages/splashscreen.dart';
import 'package:cicks/pages/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Cicks());
}
class Cicks extends StatelessWidget {
   Cicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFebeaee),
        appBarTheme: AppBarTheme(color: Color(0xFFebeaee),),

      ),
      home: Splashscreen(),
      // home: tab[currentPage],
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPage = 0;
  List<Widget> screens = [
    Homepage(),
    Wishlist(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: screens[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
              size: 30,
            ), label:'Home',),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.suit_heart, size: 30,), label:'Wishlist'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart ,size: 30,), label:'Cart'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person, size: 30,), label: 'Profile'),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          onTap: (index){
            setState(() {
              currentPage = index;
            });
          },
          // selectedIndex: currentPage,Color(0xFFf9f9f9),
          currentIndex: currentPage,
        )

    );
  }
}

