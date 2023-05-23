import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Categories',
      home: CategoriesScreen(),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  final List<String> categories = [
    'Fashion',
    'Beauty',
    'Electronics',
    'Jewellery',
    'Footwear',
    'Toys',
    'Furniture',
    'Mobiles'
  ];
  List<String> categoryImages = [
    "assets/images/fashion.png",
    "assets/images/beauty.png",
    "assets/images/electronics.png",
    "assets/images/jewellery.png",
    "assets/images/footwear.png",
    "assets/images/toys.png",
    "assets/images/furniture.png",
    "assets/images/iphone.png",
  ];
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite_outline_sharp),
            onPressed: null,
          ),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: categories.map((category) {
                  String categoryImage = categoryImages[index];
                  index++;
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 10.0,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(100),
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 235, 157, 41),
                              Color.fromARGB(255, 233, 96, 96)
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 218, 66, 200),
                              radius: 31,
                              child: Image.asset(
                                categoryImage,
                                width: 50.0,
                                height: 50.0,
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              category,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
