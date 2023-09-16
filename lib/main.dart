import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: controller,
                maxLines: 2,
                minLines: 1,
                maxLength: 40,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: "Email OR phone"),
              ),
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    foregroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  print(controller.text);
                },
                child: Text("click me"))
          ],
        ),
      ),
    );
  }
}
