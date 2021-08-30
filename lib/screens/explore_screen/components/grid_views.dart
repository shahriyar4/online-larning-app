import 'package:flutter/material.dart';

class ExploreScreenGridViews extends StatelessWidget {
  const ExploreScreenGridViews({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8 / 0.2,
        mainAxisSpacing: 10,
      ),
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
           
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xff6360FF),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              list[index],
              style: TextStyle(fontSize: 12, color: Color(0xffFCFCFF)),
            ),
          ),
        );
      },
    );
  }
}
