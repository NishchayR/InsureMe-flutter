import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: Column(
                children: [
                  const SizedBox(height: 20.0,),
                  const Text("Welcome !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text("To",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text("Insure ME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  const Text("Your Personal Health Care Companion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/login');},
                    child: const Icon(Icons.arrow_forward_ios, size: 20.0,),)
                ],
              ),
            ),
          ),
        ),
      ), )

    );
  }
}
