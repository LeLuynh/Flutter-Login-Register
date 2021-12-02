import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session4/components/input_form.dart';
import 'package:session4/components/pass_form.dart';
import 'package:session4/components/text_component.dart';
import 'package:session4/contants.dart';

class ForgotPassword extends StatefulWidget {
  static String path = '/forgot_password';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // ignore: avoid_unnecessary_containers
          child: (Container(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextComponent(
                          title: "FORGOT PASSWORD",
                          subtitle:
                              "Enter your email or phone to request a password reset",
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: kWhileColor,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        TextFormField(
                                          textAlign: TextAlign.center,
                                          style:
                                              const TextStyle(color: kXamColor),
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: kGrayColor,
                                              hoverColor: kGrayColor,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: kGrayColor),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText:
                                                  "Your email or your phone",
                                              hintStyle: const TextStyle(
                                                  color: kXamColor)),
                                        ),
                                        const SizedBox(height: 30),
                                        Container(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: const Size(
                                                  double.infinity, 55),
                                              primary: kOrangeColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              "SEND NOW",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 3.0),
                            child: Text(
                              "Having Problem?",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kBlackDark,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Need Help",
                              style: TextStyle(
                                color: kOrangeColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        )),
      )),
    );
  }
}
