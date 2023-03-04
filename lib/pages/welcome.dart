
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  var name;
  Welcome(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 350.0,
                width: 450.0,
                child: ListView(
                  children: [
                    const SizedBox(height: 20.0,),
                    const Text("Welcome !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Text("$name",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("To",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    const Text("Insure ME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/predict');},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ), child: const Text("Predict"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0,),
                  ],
                ),
              ),
            ),
          ),
        ), )

    );
  }
}

