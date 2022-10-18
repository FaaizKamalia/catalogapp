import 'package:catalog/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool shape = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Cart()));

        },
        child: Icon(Icons.shopping_cart),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    'Faaiz khan',
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    'faaizkhan@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/login.webp',
                    ),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catalog App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Trending Products",
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                AnimatedContainer(
                                  height: shape? 30 : 35,
                                  duration: Duration(seconds: 1),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        shape = !shape;
                                      });

                                    },
                                    child: shape? Icon(Icons.shopping_cart):Icon(Icons.done),
                                      style: ButtonStyle(

                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),

                                              )
                                          )
                                      )
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Macbook pro",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("macbook 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/iphone12.jpg',
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "iphone12Pro max",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("iphone 12th generation"),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "9999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_cart),style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                        )
                                    )
                                ))
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
