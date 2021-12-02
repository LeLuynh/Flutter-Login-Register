import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session4/components/input_form.dart';
import 'package:session4/components/pass_form.dart';
import 'package:session4/components/text_component.dart';
import 'package:session4/contants.dart';
import 'package:session4/screens/register.dart';

class Login extends StatefulWidget {
  static String path = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool val = true;
  onchangeFunction(bool newValue) {
    setState(() {
      val = newValue;
    });
  }

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
                          title: "SIGN IN",
                          subtitle: "Complete this step for best adjustment ",
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
                                        const Text(
                                          'Your Email',
                                          style: TextStyle(
                                            color: kXamColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const TextForm(
                                          hightText: 'Your Email',
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          'Password',
                                          style: TextStyle(
                                            color: kXamColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const PassFrom(
                                          hintText: "Password",
                                        ),
                                        const SizedBox(height: 10),
                                        customSwitch("Remember Me", val,
                                            onchangeFunction),
                                        const SizedBox(height: 25),
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
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, Register.path);
                                            },
                                            child: const Text(
                                              "SIGN IN",
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
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 55),
                            primary: kBlueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "SIGN IN WITH FACEBOOK",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 3.0),
                            child: Text(
                              "I don't have a account?",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kBlackDark,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Register.path);
                            },
                            child: const Text(
                              "Sign Up",
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

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.5,
          alignment: Alignment.centerLeft,
          child: CupertinoSwitch(
            activeColor: kOrangeColor,
            trackColor: kXamColor,
            value: val,
            onChanged: (context) {
              onChangeMethod(context);
            },
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kXamColor,
          ),
        ),
        const Spacer(),
        const Text(
          "Forgot Password?",
          style: TextStyle(
            fontSize: 12,
            color: kBlackColor,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
