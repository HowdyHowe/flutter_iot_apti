import 'package:control_iot_app/pages/first_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Control IOT App"),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    hintText: "masukkan id",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 226, 226, 226))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 46, 54, 72)))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    hintText: "masukkan password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 226, 226, 226))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 46, 54, 72)))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[400]),
            )
          ],
        ),
      ),
    );
  }
}
