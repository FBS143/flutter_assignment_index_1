import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            builProfileOption(
                Icons.icecream, "Ice cream is very delicious right?"),
            builProfileOption(
                Icons.code, "Programing is not boring if you love it "),
            builProfileOption(Icons.egg,
                "If you submit code directly copy from chatgpt then mark will 0")
          ],
        ),
      ),
    );
  }

  Widget builProfileOption(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.purple.shade100,
            child: Icon(icon, size: 40, color: Colors.deepPurple),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
