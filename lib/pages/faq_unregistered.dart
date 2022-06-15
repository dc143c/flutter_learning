import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqUnregistered extends StatefulWidget {
  const FaqUnregistered({ super.key });

  @override
  State<FaqUnregistered> createState() => _FaqUnregisteredState();
}

class _FaqUnregisteredState extends State<FaqUnregistered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas frequentes'),
      ),
      body: Container(
        child: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Algum texto'),
              Text('Algum texto'),
            ],
          ),
        ),
      )
    );
  }
}
