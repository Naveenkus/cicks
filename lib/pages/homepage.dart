import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
   Homepage({Key? key}) : super(key: key);

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFebeaee),
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Color(0xFFebeaee),
        child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFD6D6D6)
            ),
              accountName: Text("User Name"),
              accountEmail: Text("abc68jdh@gmail.com"),
              currentAccountPicture : CircleAvatar(
                child: Icon(Icons.account_circle_outlined),
              )
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person_crop_square),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.bitcoin),
            title: Text('Supercoins'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          // ListTile(
          //   leading: Icon(Icons.light),
          //   title: Text(''),
          //   trailing: Icon(Icons.arrow_forward_ios_outlined),
          // ),
          // ListTile(
          //   leading: Icon(Icons.comment_bank_outlined),
          //   title: Text('Feedback'),
          //   trailing: Icon(Icons.arrow_forward_ios_outlined),
          // ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact us'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFf9f9f9),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                          icon: Icon(Icons.menu),
                        ),
                      ),
                      Text("Cicks" ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFf9f9f9),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(onPressed: () {
                        },
                          icon: Icon(Icons.notifications_none_outlined),
                        ),
                      ),
                    ],
                  ),
                  Text("Hello"),
                ],
              ),
            )),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFf9f9f9),
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled,
          size: 35,
          weight: 20,), label:'Home',
          ),
          NavigationDestination(icon: Icon(CupertinoIcons.suit_heart, size: 30,), label:'Wishlist'),
          NavigationDestination(icon: Icon(CupertinoIcons.shopping_cart ,size: 30,), label:'Cart'),
          NavigationDestination(icon: Icon(CupertinoIcons.person, size: 30,), label: 'Profile'),
        ],
        // onDestinationSelected: (int index){
        //   setState(() {
        //     currentPage = index;
        //   });
        // },
        // selectedIndex: currentPage,
      ),
    );
  }
}

