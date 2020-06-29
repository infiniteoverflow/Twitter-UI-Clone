import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String handle;
  final int time;
  final String postText;
  final int comments;
  final int retweets;
  final int likes;
  
  const Post({
    Key key, this.image, this.name, this.handle, this.time, this.postText, this.comments,
    this.retweets, this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400])
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: CircleAvatar(
              radius: 31,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:image,
                backgroundColor: Colors.white,
                
              ),
            ),
          ),

          SizedBox(width: 5,),

          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.only(left:5),
                        height: 20,
                        child: Row(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left:2.0),
                              child: Text(
                                "@$handle",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${time}h",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey
                            ),
                          ),

                          Icon(Icons.keyboard_arrow_down,size: 20,),
                        ],
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top:8.0,right: 8.0,left: 5.0,bottom: 8.0),
                  child: Text(
                    postText
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:3),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/comment.png"),
                            height: 18,
                            width: 18,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "$comments"
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left:3),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/retweet.png"),
                            height: 18,
                            width: 18,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "$retweets"
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left:3),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/heart.png"),
                            height: 18,
                            width: 18,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "$likes"
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left:3),
                      child:Image(
                        image: AssetImage("assets/share.png"),
                        height: 18,
                        width: 18,
                      ),
                    ),

                    SizedBox(width: 10,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}