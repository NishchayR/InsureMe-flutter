import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Predict extends StatefulWidget {
  const Predict({Key? key}) : super(key: key);

  @override
  State<Predict> createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  final age = TextEditingController();
  final bmi = TextEditingController();
  final child = TextEditingController();
  final allergies = TextEditingController();
  final surgeries = TextEditingController();
  String diabetic = "yes";
  String blood = "yes";
  String chronic = "yes";
  String gender = "male";
  String smoke = "yes";
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
                width: 370.0,
                child:ListView(
                  padding: const EdgeInsets.all(20),

                  children: <Widget>[
                    const SizedBox(height: 20.0,),
                    const Text("Predict Cost",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40.0,),
                    const Text("Enter your age",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    TextField(
                      controller: age,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintStyle: const TextStyle(color: Colors.white30),
                          hintText: "eg : 20",
                          suffixIcon: IconButton(
                              onPressed: (){
                                age.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    const Text("Enter your BMI",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    TextField(
                      controller: bmi,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintStyle: const TextStyle(color: Colors.white30),
                        hintText: "eg : 30",
                          suffixIcon: IconButton(
                              onPressed: (){
                                bmi.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    const Text("How many children do you have ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    TextField(
                      controller: child,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintStyle: const TextStyle(color: Colors.white30),
                        hintText: "eg : 2",
                          suffixIcon: IconButton(
                              onPressed: (){
                                child.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    const Text("Are you diabetic ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Row(
                      children: [
                        const Text("Yes",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(value: "yes",
                            groupValue: diabetic,
                            onChanged:(value){
                              setState(() {
                                diabetic=value.toString();
                              });
                            }
                        ),
                        const Text("No",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(
                            focusColor: Colors.white,
                            value: "no",
                            groupValue: diabetic,
                            onChanged:(value){
                              setState(() {
                                diabetic=value.toString();
                              });
                            }
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Any blood pressure problems ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Row(
                      children: [
                        const Text("Yes",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(value: "yes",
                            groupValue: blood,
                            onChanged:(value){
                              setState(() {
                                blood=value.toString();
                              });
                            }
                        ),
                        const Text("No",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(
                            focusColor: Colors.white,
                            value: "no",
                            groupValue: blood,
                            onChanged:(value){
                              setState(() {
                                blood=value.toString();
                              });
                            }
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Any chronic disease ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Row(
                      children: [
                        const Text("Yes",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(value: "yes",
                            groupValue: chronic,
                            onChanged:(value){
                              setState(() {
                                chronic=value.toString();
                              });
                            }
                        ),
                        const Text("No",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(
                            focusColor: Colors.white,
                            value: "no",
                            groupValue: chronic,
                            onChanged:(value){
                              setState(() {
                                chronic=value.toString();
                              });
                            }
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Any previous allergies ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    TextField(
                      controller: allergies,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintStyle: const TextStyle(color: Colors.white30),
                        hintText: "eg : 2",
                          suffixIcon: IconButton(
                              onPressed: (){
                                allergies.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    const Text("Any major surgeries ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    TextField(
                      controller: surgeries,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintStyle: const TextStyle(color: Colors.white30),
                        hintText: "eg : 2",
                          suffixIcon: IconButton(
                              onPressed: (){
                                surgeries.clear();
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white60,))
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    const Text("Gender",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Row(
                      children: [
                        const Text("Male",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(value: "male",
                            groupValue: gender,
                            onChanged:(value){
                              setState(() {
                                gender=value.toString();
                              });
                            }
                        ),
                        const Text("Female",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(
                            focusColor: Colors.white,
                            value: "female",
                            groupValue: gender,
                            onChanged:(value){
                              setState(() {
                                gender=value.toString();
                              });
                            }
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Do you smoke ?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Row(
                      children: [
                        const Text("Yes",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(value: "yes",
                            groupValue: smoke,
                            onChanged:(value){
                              setState(() {
                                smoke=value.toString();
                              });
                            }
                        ),
                        const Text("No",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Radio(
                            focusColor: Colors.white,
                            value: "no",
                            groupValue: smoke,
                            onChanged:(value){
                              setState(() {
                                smoke=value.toString();
                              });
                            }
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/cost');},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                      ), child: const Text("Predict"),
                    ),
                    const SizedBox(height: 20.0,),
                    TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, '/');
                    }, child: const Text("Log Out"),),
                  ],
                )
              ),
            ),
          ),
        ),
        )

    );
  }
}
