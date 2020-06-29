import 'package:flutter/material.dart';

Widget storySection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left:8.0,top:5.0),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  child: Text(
                    "A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  radius: 20,
                ),

                Positioned(
                  child: CircleAvatar(
                    child: Icon(Icons.add,color: Colors.white,size: 12,),
                    radius: 7,
                  ),
                  bottom: 0,
                  right: 0,
                )
              ],
            ),

            SizedBox(height: 4,),

            Text(
              "You",
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        )
      ),

      Padding(
        padding: const EdgeInsets.only(left:8.0,top:5.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text(
                "B",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              radius: 20,
            ),

            Text(
              "Somebody",
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(left:8.0,top:5.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                "C",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              radius: 20,
            ),
            
            Text(
              "Nobody",
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        ),
      ),
    ],
  );
}