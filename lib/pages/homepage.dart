import 'package:cicks/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cicks/main.dart';
import '../Widgets/chip_widget.dart';
import 'loginpage.dart';

class Homepage extends StatefulWidget {
   Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage = 0;

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
        children: [
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
            leading: Icon(CupertinoIcons.plus_app),
            title: Text('Cicks Plus'),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.bitcoin),
            title: Text('Your coins'),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cube_box),
            title: Text('Orders'),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard_rounded),
            title: Text('Coupons'),
          ),
          Divider(),
          ListTile(
            leading: Icon(CupertinoIcons.headphones),
            title: Text('Help Centre'),
          ),
          ListTile(
            leading: Icon(Icons.note_alt_outlined),
            title: Text('Reviews'),
          ),
          ListTile(
            leading: Icon(Icons.sticky_note_2_outlined),
            title: Text('Terms and Policies'),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_sharp),
            title: Text('Browse FAQs'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log out'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()));
            },
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
                  SizedBox(height: 30,),
                  TextField(
                    // onChanged: searchProducts,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search, color: Colors.black87,),
                      suffixIcon: Icon(Icons.mic_none, color: Colors.black87,),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFebeaee)),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFf9f9f9),),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      fillColor: Color(0xFFf9f9f9),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("NEW IN",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                        children: [
                    ChipWidget(chiplabel: "All",),
                    ChipWidget(chiplabel: "Shoes",),
                    ChipWidget(chiplabel: "Bags",),
                    ChipWidget(chiplabel: "Glasses",),
                    ChipWidget(chiplabel: "Accessories",),
                        ],
            ),
                  ),
                ],
              ),
            )),
      ),

    );
  }
}


