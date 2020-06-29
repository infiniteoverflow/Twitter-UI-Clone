import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/story.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.blue,
          onPressed: () {

          },
        ),
        elevation: 1,
        title: Image(
          image: AssetImage("assets/twitter.png"),
          height: 40,
          width: 40,
        ),
        centerTitle: true,
        actions: [
          Image(
            image: AssetImage("assets/sparkle.png"),
            height: 40,
            width: 40,
          ),
        ],
      ),
      body: ListView(
        children: [
          storySection(),

          SizedBox(height: 10,),

          Divider(height: 2,thickness: 2,),

          SizedBox(height: 10,),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:AssetImage("assets/twitter.png"),
                    backgroundColor: Colors.white,
                    
                  ),
                ),

                SizedBox(width: 5,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Aswin Gopinathan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),

                        SizedBox(width: 2,),

                        Text(
                          "@Ag1871",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey
                          ),
                        ),

                        SizedBox(width: 2,),

                        Text(
                          "2h",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey
                          ),
                        ),


                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down),
                          onPressed: () {

                          },
                        )

                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}