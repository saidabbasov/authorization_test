import 'package:flutter/material.dart';
import 'package:testapp/widgets/MyButton.dart';
import 'package:testapp/widgets/MyInput.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 120),
              child: SizedBox(
                width: 160,
                child: Text(
                  'Hesabınıza daxil olun',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            MyInput(),
            MyButton(
              myButtonText: 'Daxil ol',
            ),
          ],
        ),
      ),
    );
  }
}
