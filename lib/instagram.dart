import 'package:flutter/material.dart';

void main() {
  runApp(MyIg());
}

class MyIg extends StatelessWidget {
  const MyIg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("Reels"),
    ),
    Center(
      child: Text("Cart"),
    ),
    Column(
      children: [
        AppBar(
          title: Text(
            "Username",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text(
                  "Post",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("10")
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text(
                  "Followers",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("1000")
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text(
                  "Following",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("100")
              ],
            ),
            SizedBox(
              width: 40,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ini nama",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Ini adalah bio instagram"),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      width: 500,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Edit Profile",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                  ],
                ))
          ],
        )
      ],
    )
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_rounded), label: ""),
        ],
      ),
    );
  }
}
