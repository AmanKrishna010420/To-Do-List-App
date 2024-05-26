

import 'package:flutter/material.dart';
//I have to make a variable which will store the input value
// Function which converts the input value 
// Store that value 
// Present that value

class RupeePage extends StatefulWidget{
  const RupeePage ({super.key});
  @override
  State createState() =>_CurrencyPage() ;
}

class _CurrencyPage extends State{
  double result = 0   ;
  TextEditingController textEditingController =  TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 83; 
    setState(() {});
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 122, 165),
      appBar: AppBar(
        title: const Text("CURRENCY CONVERTER",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(218, 50, 6, 6),
                borderRadius: BorderRadius.circular(24), // Added border radius
              ),
              child: const SizedBox(
                child:  Center(
                  child: Text(
                    "DOLLAR CONVERTER",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                  ),
                              ),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              controller : textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(color: Color.fromARGB(253, 255, 255, 255)),
                  prefixIcon: Icon(Icons.attach_money_rounded),
                  prefixIconColor: Color.fromARGB(255, 252, 239, 0),
                  filled: true,
                  fillColor: Color.fromARGB(214, 43, 43, 50),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            ElevatedButton(onPressed: convert,
            style: const ButtonStyle(
              elevation:WidgetStatePropertyAll(30),
              backgroundColor: WidgetStatePropertyAll(Colors.amber),

            ),
            child: const Text('CONVERT IT!',
            style:TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),
            )
            )
          // ,const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: TextField(
            
          //       style: TextStyle(
          //         color: Color.fromARGB(255, 255, 255, 255),
          //         fontWeight: FontWeight.bold,
          //       ),
          //       decoration: InputDecoration(
          //         hintText: "",
          //         hintStyle: TextStyle(color: Color.fromARGB(253, 255, 255, 255)),
          //         prefixIcon: Icon(Icons.currency_rupee),
          //         prefixIconColor: Color.fromARGB(255, 252, 239, 0),
          //         filled: true,
          //         fillColor: Color.fromARGB(214, 43, 43, 50),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(24)),
          //         ),
          //       ),
          //       keyboardType: TextInputType.numberWithOptions(
          //         decimal: true,
          //         signed: true,
          //       ),
          //     ),
          //   ),
            ,Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(218, 50, 6, 6),
                borderRadius: BorderRadius.circular(24), // Added border radius
              ),
              child:  SizedBox(
                width:150,
                
                child:  Center(
                  child:Text(
                    'INR $result',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                  ),
                              ),
                ),
              )
            ),          
       ] ),
      ),
    );

  }
  }
