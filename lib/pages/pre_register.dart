import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class preRegister extends StatefulWidget {
  const preRegister({ super.key });

  @override
  State<preRegister> createState() => _preRegisterState();
}

void choseType(String type) {
  print(type);
}

class _preRegisterState extends State<preRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pre-register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                choseType('Motorista');
              },
              child: Container(
                height:
                MediaQuery.of(context)
                    .size.height * 0.20,
                margin: EdgeInsets
                    .symmetric(
                    vertical:
                    MediaQuery.of(context)
                        .size
                        .height * 0.01,
                    horizontal:
                    MediaQuery.of(context)
                        .size
                        .width * 0.1
                ),
                padding:  EdgeInsets
                    .symmetric(
                  vertical:
                  MediaQuery.of(context)
                      .size
                      .height * 0.05,
                  horizontal:
                  MediaQuery.of(context)
                      .size
                      .width * 0.03,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.teal,
                ),
                child: Column(children: const [
                  Icon(Icons.backpack, color: Colors.white),
                  Text('Entregador',
                      style: TextStyle(color: Colors.white
                      )
                  )
                ])
              ),
            ),
            Container(
                height:
                MediaQuery.of(context)
                    .size.height * 0.2,
                margin: EdgeInsets
                    .symmetric(
                    vertical:
                    MediaQuery.of(context)
                        .size
                        .height * 0.01,
                    horizontal:
                    MediaQuery.of(context)
                        .size
                        .width * 0.1
                ),
                padding: EdgeInsets
                    .symmetric(
                  vertical:
                  MediaQuery.of(context)
                      .size
                      .height * 0.05,
                  horizontal:
                  MediaQuery.of(context)
                      .size
                      .width * 0.03,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.teal,
                ),
                child: Column(children: [
                  const Center(child: Icon(Icons.store, color: Colors.white),),
                  Center(
                    child: TextButton(onPressed: (){
                      choseType('Comércio');
                    }, child:
                    const Text('Comércio',
                        style: TextStyle(color: Colors.white)
                    )
                    ),
                  )
                ],
                )
            ),
      ]),
      ),
    );
  }
}
