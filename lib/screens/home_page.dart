import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final  _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        padding: EdgeInsets.fromLTRB(35.5, 105.5, 35.5, 0),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/facebook.png'),
                width: 55.5,
                height: 70.5,
              ),
              SizedBox(
                height: 12.5,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                       TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                            labelText: 'Password', border: OutlineInputBorder()),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                      ),
                        SizedBox(
                        height: 12.5,
                      ),
                       TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                            labelText: 'Password', border: OutlineInputBorder()),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
