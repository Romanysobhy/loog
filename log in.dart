import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 100),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              // ignore: sort_child_properties_last
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'your email  :',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.person, color: Colors.black87),
                ),
              ),
              margin: EdgeInsets.only(top: 200),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(35),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'your password :',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.black87),
                  suffixIcon: Icon(Icons.visibility, color: Colors.black87),
                ),
                obscureText: true,
              ),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              // ignore: sort_child_properties_last
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
