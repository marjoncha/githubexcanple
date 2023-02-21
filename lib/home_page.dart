import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
        ),
        title: Text("Instagram"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.live_tv),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Stories",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Watch All",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _story(image: 'assets/images/profil1.jpg', name: "Sylvester"),
                  _story(image: 'assets/images/profil2.jpg', name: "Lavina"),
                  _story(image: 'assets/images/profil3.jpg', name: "Jazmin"),
                  _story(image: 'assets/images/profil4.jpg', name: "Mariana"),
                  _story(image: 'assets/images/profil.jpg', name: "Marjona"),
                ],
              ),
            ),
            SizedBox(
              height: 490,
              child: ListView(
                children: [
                  _rasmlar(
                      rasm: "assets/images/rasm2.jpg",
                      assetrasm: "assets/images/profil1.jpg",
                      ism: "Sylvester"),
                       _rasmlar(
                      rasm: "assets/images/rasm1.jpg",
                      assetrasm: "assets/images/profil2.jpg",
                      ism: "Yulduz"),
                       _rasmlar(
                      rasm: "assets/images/profil4.jpg",
                      assetrasm: "assets/images/profil3.jpg",
                      ism: "Anora"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _story({required String image, required String name}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            border: Border.all(color: Colors.purple, width: 3),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}

Widget _rasmlar(
    {required String rasm, required String assetrasm, required String ism}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(assetrasm),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            ism,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
              size: 40,
            ),
          )
        ],
      ),
      SizedBox(height: 10),
      Image(
        image: AssetImage(rasm),
      ),
      Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.comment,
                color: Colors.grey,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.grey,
                size: 35,
              )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.grey,
                size: 35,
              )),
        ],
      ),SizedBox(height: 10,),
      Text(
        "Liked By Sigmund,Yessenia ,Dayana and 1263 others Brianne Consequatur nihil aliquid omnis consequatur.",
        style: TextStyle(color: Colors.white,fontSize: 15),
      ),
      SizedBox(height: 10,),
      Text("February 2020", style: TextStyle(color: Colors.white,fontSize: 15)),
      SizedBox(height: 15,)
    ],
  );
}
