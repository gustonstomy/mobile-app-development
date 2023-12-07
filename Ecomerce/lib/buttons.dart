import 'package:ecomerce/bottum_navigation_bar.dart';
import 'package:flutter/material.dart';

class LoginAlt extends StatelessWidget {
  const LoginAlt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 40,
                child: Image.asset("assets/images/ggle.png"),
              ),
              SizedBox(
                height: 30,
                child: Image.asset("assets/images/apple.png"),
              ),
              SizedBox(
                height: 30,
                child: Image.asset("assets/images/faceB.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottunsClick extends StatelessWidget {
  const BottunsClick({super.key, this.height, this.name,this.tcolor, this.bcolor,this.fontSize, this.width});
  final String? name;
  final double? height;
  final double? width;
  final Color? bcolor, tcolor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const BottumBavigationBar();
          }));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(bcolor!),
          minimumSize: MaterialStateProperty.all<Size>(Size(width!, height!)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Text(
          name!,
          style:  TextStyle(
              color: tcolor, fontSize: fontSize, fontWeight: FontWeight.bold),
        ));
  }
}
