import 'package:flutter/material.dart';

class ScreanContainer extends StatelessWidget {
  const ScreanContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 0),
                    width: 2,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(6, 6),
                    blurRadius: 2.5,
                  )
                ],
                //shape: BoxShape.circle,
              ),
              child: Text(
                'Texto ' * 112,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted),
              ),
              //constraints: BoxConstraints(),
              transform: Matrix4.rotationZ(0.2),
            ),
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 0),
                    width: 2,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(6, 6),
                    blurRadius: 2.5,
                  )
                ],
                //shape: BoxShape.circle,
              ),
              child: Text(
                'Texto ' * 112,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted),
              ),
              //constraints: BoxConstraints(),
              transform: Matrix4.rotationZ(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
