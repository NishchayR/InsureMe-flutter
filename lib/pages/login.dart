import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SafeArea(child:       DecoratedBox(
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
              height: 560.0,
              width: 300.0,
              child: Column(
                children: [
                  const SizedBox(height: 20.0,),
                  const Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40.0,),
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
                      controller: _textController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintStyle: const TextStyle(color: Colors.white30),
                          hintText: "nishchayrajpal",
                          suffixIcon: IconButton(
                              onPressed: (){
                                _textController.clear();
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
                      controller: _textController1,
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
                                _textController1.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  ElevatedButton(onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                    ), child: const Text("Login"),
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
                  const Text("Need an account?",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  const SizedBox(height: 5.0,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, '/signup');
                  }, child: const Text("SIGN UP"),),
                ],
              ),
            ),
          ),
        ),
      ), )

    );
  }
}
