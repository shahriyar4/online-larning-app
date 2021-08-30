import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomCard extends StatelessWidget {
  const CustomBottomCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        height: height * 0.42,
        width: width * 1.2,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomBottomCardContainer(height: height, width: width),
              );
            }),
      ),
    );
  }
}

class CustomBottomCardContainer extends StatelessWidget {
  const CustomBottomCardContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFCFCFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CustomBottomCardRow1(height: height, width: width),
          CustomBottomCardRow2(height: height, width: width)
        ],
      ),
    );
  }
}

class CustomBottomCardRow2 extends StatelessWidget {
  const CustomBottomCardRow2({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/icons/star.svg',
            fit: BoxFit.fill,
            height: height * 0.02,
            width: width * 0.04,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '4.5',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '●  By Sarah William',
          style: TextStyle(color: Color(0xff91919F)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '●  All Level',
          style: TextStyle(color: Color(0xff91919F)),
        ),
      ],
    );
  }
}

class CustomBottomCardRow1 extends StatelessWidget {
  const CustomBottomCardRow1({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
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
          height: height * 0.1,
          width: width * 0.16,
          decoration: BoxDecoration(
              color: Color(0xffFF8181),
              borderRadius: BorderRadius.circular(18)),
          child: Center(
            child: Image.asset(
              'assets/images/ddd.png',
              fit: BoxFit.fill,
              height: height * 0.06,
              width: width * 0.12,
            ),
          ),
        ),
      ],
    );
  }
}
