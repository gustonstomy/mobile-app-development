import 'package:ecomerce/buttons.dart';
import 'package:ecomerce/login.dart';
import 'package:ecomerce/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String selectedLanguage = 'Eng';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.07,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Row(children: [
                    DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: selectedLanguage,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue,
                            ),
                            items: <String>[
                              'Eng',
                              'Fren',
                              'Ger',
                              'Fran',
                              'Ital'
                            ].map((String value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(color: Colors.blue),
                                  ));
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedLanguage = newValue!;
                              });
                            }))
                  ]),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .25,
                child: Image.asset("assets/images/st.png"),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldForm(
                    height: 60,
                    width: 155,
                    labelText: "First Name",
                    hintText: "James",
                  ),
                  TextFieldForm(
                    height: 60,
                    width: 155,
                    labelText: "First Name",
                    hintText: "James",
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const TextFieldForm(
                height: 60,
                width: 500,
                hintText: "james@gmail.com",
                labelText: "Email",
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const PasswordTextFieldForm(
                labelText: "Password",
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const PasswordTextFieldForm(
                labelText: "Confirm Password",
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or Create with",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const LoginAlt(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Terms and Conditions ',
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Pravicy Policy ',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.005,
              ),
              const BottunsClick(
                bcolor: Colors.amber,
                fontSize: 18,
                height: 55,
                width: double.infinity,
                name: "Create Account",
                tcolor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.005,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account ?  ",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
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
