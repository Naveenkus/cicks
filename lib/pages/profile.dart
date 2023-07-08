import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentPage = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFebeaee),
      body: Column(
        children: [
          Container(height: 250,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFbe9b5e),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 20, top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.account_circle_outlined,),
                        radius: 35,
                      ),
                      SizedBox(width: 10,),
                      Text("JON MADRID",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      SizedBox(width: 100,),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.settings,
                         size: 35, ),
                        color: Colors.grey[200],),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("5",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),),
                          SizedBox(height: 5,),
                          Text("Wishlist",style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),)
                        ],
                      ),
                      VerticalDivider(
                        thickness: 2,
                        // height: 20,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text("10",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),),
                          SizedBox(height: 5,),
                          Text("Coupons",style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),)
                        ],
                      ),
                      VerticalDivider(
                        thickness: 2,
                        // height: 5,
                        color: Color(0xFFf9f9f9),
                      ),
                      Column(
                        children: [
                          Text("55",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),),
                          SizedBox(height: 5,),
                          Text("Coins",style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                            color: Color(0xFFf9f9f9),
                          ),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ),
          SizedBox(height: 15,),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            // color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Account Settings",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
