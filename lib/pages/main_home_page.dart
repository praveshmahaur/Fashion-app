import 'package:fashionapp/pages/profile_page.dart';
import 'package:fashionapp/screens/shirts_list.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'login_page.dart';
class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final TextEditingController _searchController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.lightBlueAccent,
        title:
        // Text('Ventures',style: TextStyle(
        //   fontStyle:FontStyle.italic,
        //   fontWeight: FontWeight.bold,
        //   fontSize: 30,
        //     color: Colors.purple
        // ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Ventures',style: TextStyle(
              fontStyle:FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
                color: Colors.purple
            ),
            ),

        ElevatedButton(onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
        },
            child: Text('Login',style:
            TextStyle(color: Colors.purple,
            fontSize: 15,
              fontWeight: FontWeight.bold
            ),))
          ],
        )

      ),

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
      //backgroundColor: Color(0xfFE9EBEA),
      body: ListView(
        children: [
          Column(
            children: [
              //first row
              Padding(
                padding: const EdgeInsets.only(top:0.0,left:18),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 280,
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,size: 40,),
                            hintText: 'Search..',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Badge(
                      label: Text('1'),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>CartPage()));
                        },
                        child: Image(
                            height:40,
                            width:50,
                            //fit: BoxFit.fitHeight,
                            image: AssetImage('assets/icons/cart.png')),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Badge(
                      label: Text('9+'),
                      child: Image(
                          height:30,
                          width:30,
                          image: AssetImage('assets/icons/chat.png')),
                    ),
                  ],
                ),
              ),
              //second photo banner
              Container(
                height: 230,
                width: 500,
                decoration: BoxDecoration(
                  image:DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/saleBannerm.jpg')),
                ),
              ),
              //third
              Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 410,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //inRow first column
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:45,
                                  width: 45,
                                  color: Color(0xffF6F6F6),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context,MaterialPageRoute(
                                          builder: (context)=>ProfilePage()));
                                    },
                                    child: Image(
                                      image: AssetImage('assets/images/profilePhoto.png'),),
                                  ),
                                ),
                                SizedBox(height: 7,),
                                Text('Profile')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Container(
                                    height:45,
                                    width: 45,
                                    color: Color(0xffF6F6F6),
                                    child: Image(
                                      image: AssetImage('assets/images/cetegory.png'),),
                                  ),
                                ),
                                SizedBox(height: 7,),
                                Text('category')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:45,
                                  width: 45,
                                  color: Color(0xffF6F6F6),
                                  child: Image(
                                    image: AssetImage('assets/images/follersIcon.png'),),
                                ),
                                SizedBox(height: 7,),
                                Text('follers')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:45,
                                  width: 45,
                                  color: Color(0xffF6F6F6),
                                  child: Image(
                                    image: AssetImage('assets/images/followingIcon.png'),),
                                ),
                                SizedBox(height: 7,),
                                Text('following')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:45,
                                  width: 45,
                                  color: Color(0xffF6F6F6),
                                  child: Image(
                                    image: AssetImage('assets/images/filterIcon.png'),),
                                ),
                                SizedBox(height: 7,),
                                Text('filter')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:45,
                                  width: 45,
                                  color: Color(0xffF6F6F6),
                                  child: Image(
                                    image: AssetImage('assets/images/addIcon.png'),),
                                ),
                                SizedBox(height: 7,),
                                Text('Add photo')
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              //forth
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right:8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sale Product',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('see more',style: TextStyle(
                        color: Color(0xff2A977D),
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),),


                  ],
                ),
              ),
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
                          InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>ShirtList()));
                              },
                            child: Image(
                                height:180,
                                width: 180,
                                image: AssetImage('assets/images/shirt2.jpg')),
                          ),
                          Text('Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Men's Short-\nSleeve Creqneck T-Shirt",
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
                              Text('\$12.00',
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
                              image: AssetImage('assets/images/jeans.jpg')),
                          Text('Jeans',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Men's Jeans",
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
                              image: AssetImage('assets/images/shoes.jpg')),
                          Text('Shoes',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Shoes for Mens's and Womens",
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
                              image: AssetImage('assets/images/blazers.jpg')),
                          Text('Blazers',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Blazers for Mens's 🥇",
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
                              image: AssetImage('assets/images/jewelry.jpg')),
                          Text('Jewelry',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Jewelry for Womens",
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
                              image: AssetImage('assets/images/sarees.jpg')),
                          Text('Sarees',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Essential Sarees",
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
      )

    );
  }
}
