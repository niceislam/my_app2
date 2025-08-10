import 'package:ecommerce/ecomerce_app/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  List<Map> courseList = [
    {
      "name": "Flutter",
      "vdo count": "15",
      "image":
          "https://pbs.twimg.com/card_img/1952077860505890816/P5NdtPpo?format=png&name=360x360",
    },
    {
      "name": "Reactive Native",
      "vdo count": "37",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/640px-React-icon.svg.png",
    },
    {
      "name": "Python",
      "vdo count": "19",
      "image":
          "https://images.icon-icons.com/2699/PNG/512/python_logo_icon_168886.png",
    },
    {
      "name": "C++",
      "vdo count": "27",
      "image":
          "https://static.vecteezy.com/system/resources/previews/048/332/147/non_2x/c-programming-icon-free-png.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: Icon(Icons.dashboard, color: Colors.white, size: 30),
        actions: [
          Icon(Icons.notifications, color: Colors.white, size: 30),
          SizedBox(width: 7),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Programmer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 220,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(10),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.3,
                  ),
                  children: [
                    ItemWidget(
                      name: 'Category',
                      circlecolor: Colors.amber,
                      icon: Icons.category,
                    ),
                    ItemWidget(
                      name: 'Classes',
                      circlecolor: Colors.greenAccent,
                      icon: Icons.post_add,
                    ),
                    ItemWidget(
                      name: 'Free Course',
                      circlecolor: Colors.cyan,
                      icon: Icons.article,
                    ),
                    ItemWidget(
                      name: 'Book Store',
                      circlecolor: Colors.pinkAccent,
                      icon: Icons.store,
                    ),
                    ItemWidget(
                      name: 'Live Course',
                      circlecolor: Colors.purpleAccent,
                      icon: Icons.play_circle_fill,
                    ),
                    ItemWidget(
                      name: 'LeaderBoard',
                      circlecolor: Colors.greenAccent,
                      icon: Icons.military_tech,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .75,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: courseList.length,
                    itemBuilder: (_, index) {
                      return CourseWidget(
                        coursename: '${courseList[index]['name']}',
                        vdocount: courseList[index]['vdo count'],
                        image: "${courseList[index]['image']}",
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigoAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ], // Set the currently selected tab
        selectedFontSize: 15,
        selectedItemColor:
            Colors
                .white, // Color for the selected item// Callback when a tab is tapped
      ),
    );
  }
}
