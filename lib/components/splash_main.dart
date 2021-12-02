import 'dart:html';

import 'package:flutter/material.dart';
import 'package:session4/screens/login.dart';

import '../contants.dart';

class Body1 extends StatefulWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  _Body1State createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.only(right: 5, bottom: 35, top: 35),
      height: 6.0,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive ? kOrangeColor : kSwitchColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _currentPage != _numPages - 1
                      ? Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 30),
                                  child: Row(
                                    children: const <Widget>[
                                      Text(
                                        'Skip',
                                        style: TextStyle(
                                            color: kOrangeColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: kOrangeColor,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, Login.path);
                            },
                          ))
                      : const Text(""),
                  Container(
                    height: _currentPage != _numPages - 1 ? 550 : 485,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'images/picture1.png',
                                  ),
                                  height: 300,
                                  width: 500,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'GPS Tracking',
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Loved the class! Such beautiful land and collective impact infrastructure social entrepreneur',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kXamColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'images/picture2.png',
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                'GPS Tracking',
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Loved the class! Such beautiful land and collective impact infrastructure social entrepreneur',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kXamColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'images/picture3.png',
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.0),
                              Text(
                                'Quick Food Delivery',
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Loved the class! Such beautiful land and collective impact infrastructure social entrepreneur',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kXamColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildPageIndicator(),
                    ),
                  ),
                  _currentPage != _numPages - 1
                      ? Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                },
                                child: Container(
                                  width: size.width - 40,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kOrangeColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'CONTINUE',
                                      style: TextStyle(
                                          color: kWhileColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: size.width - 40,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kBlueColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SIGN IN WITH FACEBOOK',
                                      style: TextStyle(
                                          color: kWhileColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Login.path);
                                },
                                child: Container(
                                  width: size.width - 40,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kOrangeColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                          color: kWhileColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(right: 3.0),
                                  child: Text(
                                    "Or Start to",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackDark),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    "Search Now",
                                    style: TextStyle(
                                      color: kOrangeColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                ]))
      ]),
    ));
  }
}
