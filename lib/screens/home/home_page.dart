import 'package:flutter/material.dart';
import 'package:test_app/App/components/custom_bottom_nav_bar.dart';
import 'package:test_app/App/components/enums.dart';
import 'components/custom_bottom_card.dart';
import 'components/custom_card.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String src =
      'https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      backgroundColor: Color(0xffF1F1FA),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: height,
                width: width,
                color: Color(0xff6360FF),
              ),
            ),
            Positioned(
              bottom: 0,
              top: height * 0.15,
              child: buildCustomTopContainer(height, width),
            ),
            Positioned(
              width: width,
              top: 45,
              height: height * 0.4,
              child: CustomCard(height: height, width: width),
            ),
          ],
        ),
      ),
    );
  }

  Container buildCustomTopContainer(double height, double width) {
    return Container(
      height: height * 0.7,
      width: width,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Color(0xffF1F1FA),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xffdadada).withOpacity(0.15),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildTitleRow(height),
            CustomBottomCard(height: height, width: width),
          ],
        ),
      ),
    );
  }

  Padding buildTitleRow(double height) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.14, left: 12),
      child: Row(
        children: [
          Text(
            'Recommendation',
            style: TextStyle(
              color: Color(0xff161719),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: ListTile(
        title: Text(
          'Welcome back',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        subtitle: Text(
          'Poetri Lazuardi',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      elevation: 0,
      backgroundColor: Color(0xff6360FF),
      leading: Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 20.0,
          backgroundImage:  AssetImage('assets/images/indir.jpg'),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.notifications_none,
            size: 28,
          ),
        ),
      ],
    );
  }
}
