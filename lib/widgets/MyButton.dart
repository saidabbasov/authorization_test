import 'package:flutter/material.dart';
import 'package:testapp/pages/twoPage.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key, required this.myButtonText});
  final String myButtonText;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: SizedBox(
        // width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll<Color>(
              Color(0xff6969B3),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TwoPage(),
              ),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 134, right: 134),
            child: Text(widget.myButtonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
        ),
      ),
    );
  }
}
