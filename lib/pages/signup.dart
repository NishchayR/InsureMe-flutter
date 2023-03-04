import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final username2 = TextEditingController();
  final password2 = TextEditingController();
  final repass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SafeArea(child:
      DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1584467735871-8e85353a8413?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Card(
            shadowColor: Colors.black,
            elevation: 20.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            color: Colors.black54,
            child: SizedBox(
              height: 660.0,
              width: 320.0,
              child: Column(
                children: [
                  const SizedBox(height: 20.0,),
                  const Text("Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    children: const [
                      SizedBox(width: 20.0,),
                      Icon(Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0,),
                      Text("Username",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,10,25,0),
                    child: TextField(
                      controller: username2,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintStyle: const TextStyle(color: Colors.white30),
                          hintText: "nishchay@gmail.com",
                          suffixIcon: IconButton(
                              onPressed: (){
                                username2.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Row(
                    children: const [
                      SizedBox(width: 20.0,),
                      Icon(Icons.lock,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0,),
                      Text("Password",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,10,25,0),
                    child: TextField(
                      obscureText: true,
                      controller: password2,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintStyle: const TextStyle(color: Colors.white30),
                          hintText: "*****",
                          suffixIcon: IconButton(
                              onPressed: (){
                                password2.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Row(
                    children: const [
                      SizedBox(width: 20.0,),
                      Icon(Icons.lock,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0,),
                      Text("Confirm Password",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,10,25,0),
                    child: TextField(
                      obscureText: true,
                      controller: repass,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintStyle: const TextStyle(color: Colors.white30),
                          hintText: "*****",
                          suffixIcon: IconButton(
                              onPressed: (){
                                repass.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  ElevatedButton(onPressed: (){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: username2.text,
                        password: password2.text).then((value){
                          print("Created new account");
                    Navigator.pushReplacementNamed(context, '/');
                    }).onError((error, stackTrace) {
                      print("Error${error.toString()}");
                    });
                  },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                    ), child: const Text("Sign up"),
                  ),
                  const SizedBox(height: 15.0,),
                  const Divider(thickness: 1.0,
                    color: Colors.white,
                    indent: 40.0,
                    endIndent: 40.0,
                  ),
                  const SizedBox(height: 5.0,),
                  const Text("Or",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  const SizedBox(height: 5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed:(){}, icon:const Icon(FontAwesomeIcons.facebook), color: Colors.white,),
                      IconButton(onPressed:(){}, icon:const Icon(FontAwesomeIcons.google), color: Colors.white,),
                      IconButton(onPressed:(){}, icon:const Icon(FontAwesomeIcons.twitter), color: Colors.white,),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  const Text("Already have an account?",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  const SizedBox(height: 5.0,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, '/login');
                  }, child: const Text("Login"),),
                ],
              ),
            ),
          ),
        ),
      ),
      )

    );
  }
}
