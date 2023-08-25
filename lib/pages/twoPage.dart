import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:testapp/widgets/MyButton.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({super.key});

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, bottom: 120),
              child: SizedBox(
                child: Text(
                  'OTP daxil edin',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(padding: const EdgeInsets.all(20), child: buildPinPut()),
            const MyButton(myButtonText: 'Davam et')
          ],
        ),
      ),
    );
  }
}

Widget buildPinPut() {
  return Pinput(
    onCompleted: (pin) => print(pin),
  );
}
