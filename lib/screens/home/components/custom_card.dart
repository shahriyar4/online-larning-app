import 'package:flutter/material.dart';
import 'progress_bar.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCardContainer(height: height, width: width),
      ],
    );
  }
}

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xffFCFCFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          customCardRow1(),
          customCardRow2(),
          ProgressBar(max: 10, current: 2)
        ],
      ),
    );
  }

  Row customCardRow2() {
    return Row(
      children: [
        Container(
          height: height * 0.045,
          width: width * 0.075,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1F1FA)),
          child: Center(
            child: Image.asset(
              'assets/icons/ico.png',
              //  fit: BoxFit.fill,
              height: height * 0.03,
              width: width * 0.05,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                    text: 'Current Progress\n',
                    style: TextStyle(
                      color: Color(0XFF91919F),
                    ),
                    children: [
                      TextSpan(
                        text: '50%',
                        style: TextStyle(
                          color: Color(0xff161719),
                          fontSize: 15,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.05,
        ),
        Container(
          height: height * 0.045,
          width: width * 0.075,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1F1FA)),
          child: Center(
            child: Image.asset(
              'assets/icons/ico.png',
              //  fit: BoxFit.fill,
              height: height * 0.03,
              width: width * 0.05,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                    text: 'Current Progress\n',
                    style: TextStyle(
                      color: Color(0XFF91919F),
                    ),
                    children: [
                      TextSpan(
                        text: '50%',
                        style: TextStyle(
                          color: Color(0xff161719),
                          fontSize: 15,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        )
      ],
    );
  }

  Row customCardRow1() {
    return Row(
      children: [
        Text.rich(
          TextSpan(
              text: "Declarative interfaces for any Apple \nDevices\n",
              style: TextStyle(
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text: "IDR 850.000",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
              ]),
        ),
        Spacer(),
        Container(
          height: height * 0.08,
          width: width * 0.14,
          decoration: BoxDecoration(
              color: Color(0xff6360FF),
              borderRadius: BorderRadius.circular(18)),
          child: Center(
            child: Image.asset(
              'assets/images/ss.png',
              fit: BoxFit.fill,
              height: height * 0.05,
              width: width * 0.08,
            ),
          ),
        )
      ],
    );
  }
}
