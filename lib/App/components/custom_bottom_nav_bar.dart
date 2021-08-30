import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/screens/explore_screen/explore_screen.dart';
import 'package:test_app/screens/home/home_page.dart';
import 'enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? Color(0xffFF8181)
                      : Color(0xff161719),
                  height: 20,
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, HomePage.routeName, (route) => false),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/search.svg",
                  color: MenuState.search == selectedMenu
                      ? Color(0xffFF8181)
                      : Color(0xff161719),
                  height: 20,
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, ExploreScreen.routeName, (route) => false),
              ),
            ],
          )),
    );
  }
}
