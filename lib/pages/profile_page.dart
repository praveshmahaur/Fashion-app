import 'package:flutter/material.dart';

import 'main_home_page.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
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
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //first circle photo
          Padding(
            padding: const EdgeInsets.only(left:100.0,top:50.00),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profilePhoto.png'),
              //backgroundColor: Colors.purple,
              radius: 100,
            ),
          ),
          SizedBox(height: 20,),
          // second part
          Padding(
            padding: const EdgeInsets.only(left:100.0),
            child: Text('User Name',style: TextStyle(
              fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,
            fontSize: 30,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:100.0),
            child: Text('User Name',style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 20,
            ),),
          )
        ],
      ),
    );
  }
}
