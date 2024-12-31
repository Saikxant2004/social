import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 152, 62, 255),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                size: 18,
              ))
        ],
      ),
      body: Column(
        children: [
          Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 62, 255),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                ),
                Positioned(
                  bottom: -50,
                  child: Stack(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 5,
                        child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 152, 62, 255),
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            )),
                      )
                    ],
                  ),
                ),
              ]),
          const SizedBox(
            height: 55,
          ),
          Text(
            "Sai Kxant",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "C.E.O by Universes",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemCard(
                icon: Icon(
                  Icons.video_camera_back,
                  color: const Color.fromARGB(255, 152, 62, 255),
                ),
                text: "2.3",
                smallText: "Upload",
              ),
              ItemCard(
                icon: Icon(
                  Icons.account_box,
                  color: const Color.fromARGB(255, 152, 62, 255),
                ),
                text: "4",
                smallText: "Profile",
              ),
              ItemCard(
                icon: Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 246, 255, 0),
                ),
                text: "2",
                smallText: "Rating",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SocilFeature(
            iconData: Icons.notifications,
            textData: "Notification",
          ),
          SizedBox(
            height: 20,
          ),
          SocilFeature(
            iconData: Icons.settings,
            textData: "Setting",
          ),
          SizedBox(
            height: 20,
          ),
          SocilFeature(
            iconData: Icons.support_agent,
            textData: "Support Service",
          ),
          SizedBox(
            height: 20,
          ),
          SocilFeature(
            iconData: Icons.policy,
            textData: "Private & Policy",
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              "Log Out",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 152, 62, 255),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            height: 30,
          )
        ],
      ),
    );
  }
}

class SocilFeature extends StatelessWidget {
  const SocilFeature({
    super.key,
    required this.iconData,
    required this.textData,
  });

  final IconData iconData;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 152, 62, 255),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(right: 5),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Text(
            textData,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.icon,
    required this.text,
    required this.smallText,
  });
  final Icon icon;
  final String text;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            icon,
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              smallText,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
