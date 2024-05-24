import 'package:currency_conve8/currency_conv8er.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
      Widget build(BuildContext context){
        return const MaterialApp(
            home:RupeePage()
        );
      }
}