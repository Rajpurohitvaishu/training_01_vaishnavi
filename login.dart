import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
     home:Home(),
    
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

@override
State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text('Login In'),
      centerTitle: true,
       backgroundColor: Color.fromARGB(255, 222, 247, 31),
      ),
    

 body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                 labelText: 'Email',
                border: OutlineInputBorder(),
                
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),

            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            
            ElevatedButton(
              onPressed: () {
                // Add your login logic here, such as validating credentials
                // This is just a placeholder action.
                 print(nameController.text);
                    print(passwordController.text);
                print('Sign in button pressed');
              },
              child: Text('Sign In'),
            ),
          
          ],
        ),
      ),
    );
  }

}