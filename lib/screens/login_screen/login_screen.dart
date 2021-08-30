import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/form_field.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/sign_in';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final String bottomText =
        'Feel free tro use this UI Kit\n        © Harum Shidiqi ';
    final String topText = 'Learn from anything and anywhere';
    return Scaffold(
      backgroundColor: Color(0xff6360FF),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            SizedBox(
              height: height * 0.1,
              width: width * 0.2,

              ///  UI kitdəki Iconun svgs-sini tapa bilmədim deyə şəkil olaraq kəsib yerləşdirdim
              child: Image.asset(
                'assets/icons/icon.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: height * 0.015),
            SizedBox(
              height: height * 0.075,
              width: width * 0.35,

              /// eynən burdada fontu tapa bilmədim deyə   kəsib image olaraq qoydum
              child: Image.asset(
                'assets/icons/sin.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: height * 0.005),
            Text(
              topText,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Spacer(),
            Expanded(
              flex: 6,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, bottom: 10, right: 40, left: 40),
                decoration: BoxDecoration(
                  color: Color(0xffF1F1FA),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xffdadada).withOpacity(0.15),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SignForm(height: height),
                        SizedBox(height: height * 0.04),
                        SizedBox(height: height * 0.05),
                        Text.rich(
                          TextSpan(
                            text: bottomText,
                            style: TextStyle(
                              color: Color(
                                0xff91919F,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
