import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/post.dart';
import 'package:twitter_clone/widgets/story.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedItem = 0;

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

          Post(
            image: AssetImage("assets/twitter.png"),
            name: "Aswin Gopinathan",
            handle: "AG1871",
            postText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
            "unknown printer took a galley of type and scrambled it to make a type specimen book. It "
            "has survived not only five centuries",
            time: 4,
            comments: 3,
            retweets: 5,
            likes: 100,
          ),

          Post(
            image: AssetImage("assets/insta.png"),
            name: "Ash",
            handle: "ash1181",
            postText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
            "unknown printer took a galley of type and scrambled it to make a type specimen book. It "
            "has survived not only five centuries",
            time: 6,
            comments: 10,
            retweets: 5,
            likes: 10,
          ),

          Post(
            image: AssetImage("assets/fb.png"),
            name: "Excleisor",
            handle: "stam",
            postText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
            "unknown printer took a galley of type and scrambled it to make a type specimen book. It "
            "has survived not only five centuries",
            time: 7,
            comments: 100,
            retweets: 500,
            likes: 1000,
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                new Icon(Icons.home,size: 30),
                new Positioned(  // draw a red marble
                  top: 0.0,
                  right: 0.0,
                  child: new Icon(Icons.brightness_1, size: 8.0, 
                    color: Colors.blue),
                )
              ]
            ),
            title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 30),
              title: Text(
                ""
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none,size: 30),
              title: Text(
                  ""
              )
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.mail,size: 30),
              title: Text(
                  ""
              )
          )
        ],
        currentIndex: selectedItem,
        onTap: changeIcon,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      )
    );
  }

  void changeIcon(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}

