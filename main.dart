import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigator(
          // Thêm Navigator widget ở đây
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => MyAppvip(),
            );
          },
        ));
  }
}

class MyAppvip extends StatelessWidget {
  const MyAppvip({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: const Text(
            'Categories',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.search_outlined)),
            IconButton(
                onPressed: null, icon: Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 8, // Độ nổi của nút
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[200],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2912/2912546.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text('Fashion',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.deepOrange[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/1807/1807383.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text('Beauty',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.blueAccent[100]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2278/2278984.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Text('Electronics',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.purple[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.purple[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/4259/4259776.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Text('Jewellery',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.teal[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.teal[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3343/3343850.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Text('Footwear',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.green[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/4287/4287470.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: Text('Toys',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.pink[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2603/2603741.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Text('Furnitute',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8, // Độ nổi của nút
                  backgroundColor: Colors.brown[200]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mystore()));
              },
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.brown[100],
                        radius: 60,
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2586/2586488.png',
                            height: 60,
                            width: 60),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                    child: Text('Mobiles',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class Mystore extends StatelessWidget {
  const Mystore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
        title: Text('Categories',
            style: TextStyle(fontSize: 25, color: Colors.black)),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search_outlined)),
          IconButton(
              onPressed: null, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue[100],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange[100])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink[100])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.purple[100])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red[200])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green[100])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellow[200])),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.brown[100])),
        ],
      ),
    );
  }
}
