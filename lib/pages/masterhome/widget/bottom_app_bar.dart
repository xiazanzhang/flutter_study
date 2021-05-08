// 底部按钮区域
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MasterHomeBottomAppBar extends StatelessWidget {
  _buildStarBtn(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5.h),
          child: Image(
            image: AssetImage('images/master/icon_sc@2x.png'),
            width: 15.w,
            height: 15.h,
          ),
        ),
        Text(
          '收藏师傅',
          style: TextStyle(
            color: Color.fromRGBO(85, 87, 89, 1),
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60.h,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildStarBtn(context),
          TextButton(
            onPressed: () {
              print('联系他');
            },
            child: Text('指派他'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              minimumSize: MaterialStateProperty.all(
                Size(120.w, 44.h),
              ),
              backgroundColor: MaterialStateProperty.all(
                Color.fromRGBO(10, 176, 237, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
