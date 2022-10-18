import 'package:flutter/material.dart';
class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(

            children: [
              Text("Catalog App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),textAlign: TextAlign.left,),
              Text("Trending Products",textAlign: TextAlign.left,),
              SizedBox(
                height: 25,
              ),
              Container(

                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset('images/iphone12.jpg',),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 4),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("iphone12Pro max",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            Text("iphone 12th generation",textAlign: TextAlign.left,),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('999Rs',style: TextStyle(fontWeight: FontWeight.bold),),
                                ElevatedButton(onPressed: (){}, child: Text("Buy"))
                              ],
                            ),
                          ],
                    ),
                       ),
                     )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
