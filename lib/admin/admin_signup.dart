import 'package:flutter/material.dart';

import '../pages/bottomnav.dart';
class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController userPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededeb),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
              padding: EdgeInsets.only(top: 45, left: 20, right: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 53, 51, 51), Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(MediaQuery.of(context).size.width, 110))),
            ),
            Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 60),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text("Let's start with\nAdmin", style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w500
                        ),),
                        SizedBox(height: 30,),
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: MediaQuery.of(context).size.height/2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 50,),
                                Container(
                                  padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 160, 160, 147)
                                      )
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: usernameController,
                                      validator: (value){
                                        if(value == null || value.isEmpty){
                                          return 'Please enter username';
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Username',
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(255, 160, 160, 147)
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Container(
                                  padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 160, 160, 147)
                                      )
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: userPasswordController,
                                      validator: (value){
                                        if(value == null || value.isEmpty){
                                          return 'Please enter password';
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(255, 160, 160, 147)
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Container(
                                  padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 160, 160, 147)
                                      )
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: userPasswordController,
                                      validator: (value){
                                        if(value == null || value.isEmpty){
                                          return 'Please enter password';
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Confirm Password',
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(255, 160, 160, 147)
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));

                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    margin: EdgeInsets.symmetric(horizontal: 40),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Text("SignUp", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),),
                                    ),

                                  ),
                                ),
                                const SizedBox(
                                    height: 10
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text("Already have an account?"),
                                      TextButton(
                                          onPressed: (){
                                            Navigator.of(context).pop();

                                          },
                                          child: Text("Log In", style: TextStyle(color: Colors.blue),))
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ))
            )
          ],
        ),
      ),

    );  }
}
