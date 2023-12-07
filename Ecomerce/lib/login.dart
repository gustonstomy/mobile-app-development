import 'package:ecomerce/buttons.dart';
import 'package:ecomerce/create_account.dart';
import 'package:ecomerce/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              const Text(
                "Welcome ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Back !! ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const Text(
                "`Please Login to Continue` ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              Form(
                child: Column(
                  children: [
                    const TextFieldForm(
                      height: 65,
                      width: 500,
                      hintText: "james@gmail.com",
                      labelText: "Email",
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    const PasswordTextFieldForm(
                      labelText: "Password",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.08,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or Login with",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const LoginAlt(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              const BottunsClick(
                bcolor: Colors.amber,
                fontSize: 18,
                height: 55,
                width: double.infinity,
                name: "Log in",
                tcolor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Don't have an account ?  ",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Create",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const CreateAccount();
                              }));
                            },
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
