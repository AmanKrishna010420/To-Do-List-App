import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Card(
        child:Column(
          children: [
            SizedBox(
              width: 290,
            )
          ],
        ),
        ),
      );
  }
}