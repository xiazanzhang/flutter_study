import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tabs extends StatefulWidget {
  @override
  State createState() => TabsState();
}

class TabsState extends State<Tabs> {
  int tabIndex = 0;

  final List<String> tablist = ['大家对Ta对印象', '师傅完工照'];

  void initState() {
    super.initState();
  }

  /// Tab
  _buildTab() {
    return Container(
      width: 355.w,
      height: 44.h,
      margin: EdgeInsets.only(
        top: 10.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.w),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(75, 72, 73, 0.05),
            offset: Offset(
              0,
              2.h,
            ),
            blurRadius: 5.h,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[],
            ),
          ),
          Container(
            height: 44.h,
            padding: EdgeInsets.only(
              left: 73.w,
              right: 73.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 25.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(10, 176, 237, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(1.5.w),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildPage1() {
    return Container(
      child: Text('page 1'),
    );
  }

  _buildPage2() {
    return Container(
      child: Text('page 2'),
    );
  }

  _buildTabBarView() {
    return Container(
      margin: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
      ),
      height: 100.h,
      color: Colors.white,
      child: PageView(
        children: <Widget>[
          _buildPage1(),
          _buildPage2(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTab(),
          _buildTabBarView(),
        ],
      ),
    );
  }
}
