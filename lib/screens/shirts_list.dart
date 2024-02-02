import 'package:flutter/material.dart';

import '../pages/main_home_page.dart';

class ShirtList extends StatelessWidget {
  const ShirtList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.person_outline),
                Text('Closer')
              ],
            ),
            Column(
              children: [
                Icon(Icons.group),
                Text('Groups')
              ],
            ),
            Column(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context)=>MainHomePage()));
                    },
                    child: Icon(Icons.home_filled,color: Color(0xff2A9770),)),
                Text('Discover')
              ],
            ),
            Column(
              children: [
                Icon(Icons.save),
                Text('Saved')
              ],
            ),
            Column(
              children: [
                Icon(Icons.chat),
                Text('chat')
              ],
            ),


          ],
        ),
      ),
      body:ListView(
        children: [
          Column(
            children: [
              //fifth
              Padding(
                padding: const EdgeInsets.only(top:10.0,
                    left:18,right:18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt1.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Shirts for men",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('3.9 | 2334'),
                              Text('\$9.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt2.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Shirt for Men 🥇",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('5.00 | 2334'),
                              Text('\$25.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              //fifth
              Padding(
                padding: const EdgeInsets.only(left:18,right:18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt3.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men🥇",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | '),
                              Text('\$1200.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt4.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | 2334'),
                              Text('\$15.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              )




            ],
          ),
          Column(
            children: [
              //fifth
              Padding(
                padding: const EdgeInsets.only(left:18,right:18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt5.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men🥇",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | '),
                              Text('\$1200.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt6.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | 2334'),
                              Text('\$15.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              )




            ],
          ),
          Column(
            children: [
              //fifth
              Padding(
                padding: const EdgeInsets.only(left:18,right:18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt7.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men🥇",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | '),
                              Text('\$1200.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      height:300,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Image(
                              height:180,
                              width: 180,
                              image: AssetImage('assets/images/shirt8.jpg')),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Shirt for Men",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width:3),
                              Text('4.9 | 2334'),
                              Text('\$15.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2A977D)
                                ),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              )




            ],
          ),

        ],
      ) ,
    );
  }
}
