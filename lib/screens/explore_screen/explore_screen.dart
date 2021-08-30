import 'package:flutter/material.dart';
import 'package:test_app/App/components/custom_bottom_nav_bar.dart';
import 'package:test_app/App/components/enums.dart';
import 'package:test_app/screens/explore_screen/components/category_list.dart';
import 'package:test_app/screens/home/components/custom_bottom_card.dart';
import 'package:test_app/screens/home/home_page.dart';
import 'components/grid_views.dart';
import 'components/search_field.dart';

class ExploreScreen extends StatefulWidget {
  static String routeName = '/explore';
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF1F1FA),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ExplorerScreenStack(height: height, width: width, list: list),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('ExploreScreen'),
      backgroundColor: Color(0xff6360FF),
      elevation: 0,
      leading: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, HomePage.routeName, (route) => false);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 22,
          )),
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 24,
          ),
        )
      ],
    );
  }
}

class ExplorerScreenStack extends StatelessWidget {
  const ExplorerScreenStack({
    Key? key,
    required this.height,
    required this.width,
    required this.list,
  }) : super(key: key);

  final double height;
  final double width;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: height,
            width: width,
            color: Color(0xff6360FF),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: ExploreScreenTopContainer(
              height: height, width: width, list: list),
        ),
      ],
    );
  }
}

class ExploreScreenTopContainer extends StatelessWidget {
  const ExploreScreenTopContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.list,
  }) : super(key: key);

  final double height;
  final double width;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(14),
      decoration: containerDecoration(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SearchField(),
            exploreScreenTitle1(),
            const SizedBox(height: 10),
            Padding(
              padding:   EdgeInsets.symmetric(horizontal: 10) ,
              child: ExploreScreenGridViews(list: list),
            ),
            exploreScreenTitle2(),
            CustomBottomCard(height: height, width: width)
          ],
        ),
      ),
    );
  }

  Align exploreScreenTitle1() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 12.0),
        child: Text(
          'Browse category',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Align exploreScreenTitle2() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 12.0),
        child: Text(
          'Recommended Courses',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  BoxDecoration containerDecoration() {
    return BoxDecoration(
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
    );
  }
}
