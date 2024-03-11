import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('USER DATA'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 45,
                color: Colors.teal,
                fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {
                                    
                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter email' : null;
                                    
                        },
                      ),
                    ),
              
                    SizedBox(height: 45,),
              
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {
                                    
                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter password' : null;
                          
                        },
                      ),
                    ),
                    SizedBox(height: 45,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text('Login'),
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}