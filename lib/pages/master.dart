import 'package:flutter/material.dart';
import 'package:flutter_application_study/widget/custom_page_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart';

class MasterHome extends StatefulWidget {
  @override
  State createState() => _MasterHomeState();
}

class _MasterHomeState extends State<MasterHome> with TickerProviderStateMixin {
  bool _toggleAllDescribeState = false;

  void getHttp() async {
    print('请求接口');
    try {
      var response = await Dio().get(
          'https://test-customer-miniprogram-api.wanshifu.com/refund/arbitration/getContact');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  /// 师傅的基本信息
  _buildMasterInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 64.w,
          height: 64.h,
          margin: EdgeInsets.only(left: 20.w, right: 15.w),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173474177,3720530832&fm=26&gp=0.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(width: 2, color: Colors.white),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 260.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '李师傅',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '支持11项服务承诺',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color.fromRGBO(85, 87, 89, 1),
                        ),
                      ),
                      Image.asset(
                        'images/master/icon_right-arrow@2x.png',
                        width: 15.w,
                        height: 15.h,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 375.w,
                height: 10.h,
              ),
              Container(
                width: 260.w,
                child: Wrap(
                  spacing: 5.w,
                  runSpacing: 5.h,
                  children: <Widget>[
                    Image.asset(
                      'images/master/icon_yxsf@2x.png',
                      width: 72.w,
                      height: 18.h,
                    ),
                    Image.asset(
                      'images/master/icon_bysf@2x.png',
                      width: 73.w,
                      height: 18.h,
                    ),
                    Image.asset(
                      'images/master/icon_bzj@2x.png',
                      width: 59.w,
                      height: 18.h,
                    ),
                    Image.asset(
                      'images/master/icon_dgz@2x.png',
                      width: 59.w,
                      height: 18.h,
                    ),
                    Image.asset(
                      'images/master/icon_mb@2x.png',
                      width: 46.w,
                      height: 18.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 蓝色卡片
  _buildBlueCard() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
            top: 15.h,
            right: 15.w,
          ),
          margin: EdgeInsets.only(bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/master/icon_zhpf@2x.png',
                    width: 16.w,
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.w,
                      right: 10.w,
                    ),
                    child: Text(
                      '综合评分',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '4.3',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '5.0',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/master/icon_help@2x.png',
                width: 16.w,
                height: 16.h,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
            bottom: 12.h,
          ),
          child: Row(
            children: [
              Container(
                width: 115.w,
                margin: EdgeInsets.only(right: 20.w),
                child: Text(
                  '服务次数: 20372次',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                child: Text(
                  '近3个月投诉: 99次',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
          ),
          child: Row(
            children: [
              Container(
                width: 115.w,
                margin: EdgeInsets.only(right: 20.w),
                child: Text(
                  '好评率: 99.99%',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                child: Text(
                  '完成好评返现: 666单',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 黄色卡片
  _buildOrangeCard() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
            top: 15.h,
            right: 15.w,
          ),
          margin: EdgeInsets.only(bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/master/icon_fwzl@2x.png',
                    width: 16.w,
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.w,
                      right: 10.w,
                    ),
                    child: Text(
                      '服务质量',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/master/icon_help@2x.png',
                width: 16.w,
                height: 16.h,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
            bottom: 12.h,
          ),
          child: Row(
            children: [
              Container(
                width: 120.w,
                margin: EdgeInsets.only(right: 20.w),
                child: Text(
                  '预约及时率：97.08%',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                child: Text(
                  '订单核销率：100%',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15.w,
          ),
          child: Row(
            children: [
              Container(
                width: 120.w,
                margin: EdgeInsets.only(right: 20.w),
                child: Text(
                  '预约达成率：85.02%',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                child: Text(
                  '按时完成率：99.39%',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 综合服务数据
  _buildServiceData() {
    return Container(
      margin: EdgeInsets.only(top: 24.h),
      width: 375.w,
      height: 124.h,
      child: CustomPageView(
        viewportDirection: false,
        controller: PageController(
          viewportFraction: 300 / 375,
        ),
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.w)),
              image: DecorationImage(
                image: AssetImage('images/master/bg_blue@2x.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: _buildBlueCard(),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.w)),
              image: DecorationImage(
                image: AssetImage('images/master/bg_orange@2x.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: _buildOrangeCard(),
          ),
        ],
      ),
    );
  }

  _buildText(String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 90.w,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 25.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Color.fromRGBO(85, 87, 89, 1),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 285.w,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: 25.w,
            right: 25.w,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                ),
              ),
              Wrap(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: Color.fromRGBO(85, 87, 89, 1),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 查看更多介绍
  _buildAllDescribe() {
    return Container(
      width: 375.w,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          getHttp();
          setState(() {
            _toggleAllDescribeState = !_toggleAllDescribeState;
          });
          print('我被点击了' + _toggleAllDescribeState.toString());
        },
        child: Column(
          children: [
            if (_toggleAllDescribeState)
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 325.w,
                        margin: EdgeInsets.only(
                          left: 25.w,
                          right: 25.w,
                        ),
                        padding: EdgeInsets.only(
                          bottom: 13.h,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              width: 1.w,
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 16.sp),
                          child: Row(
                            children: [
                              Text(
                                '师傅介绍',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildText('服务类型', '配送、安装'),
                      _buildText('所在地区', '西安灞桥区'),
                      _buildText('服务地区', '西安（新城区、莲湖区、灞桥区、未央区、雁塔区、长安区）'),
                      _buildText('服务时间', '周一至周日（0:00-0:59）'),
                      _buildText('员工个人', '15'),
                      _buildText('货车情况', '大型'),
                      _buildText('提货地点', '原点新城，泾阳，咸阳机场物流不去下单请标准清楚，如有推单请谅解'),
                      _buildText('服务介绍', '用心服务，客户至上，泾阳县原点的物流不去，如有退单敬请谅解'),
                    ],
                  ),
                ],
              ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _toggleAllDescribeState ? '收起' : '查看更多介绍',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Color.fromRGBO(133, 137, 140, 1),
                    ),
                  ),
                  Image.asset(
                    _toggleAllDescribeState
                        ? 'images/master/icon_top_arrow@2x.png'
                        : 'images/master/icon_btm_arrow@2x.png',
                    width: 15.w,
                    height: 15.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// 头部区域
  _buildHeader() {
    return Container(
      padding: EdgeInsets.only(top: 15.h),
      child: Column(
        children: [
          _buildMasterInfo(),
          _buildServiceData(),
          _buildAllDescribe(),
        ],
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Container(
        width: 375.w,
        color: Color.fromRGBO(237, 241, 242, 1),
        child: Column(
          children: [
            _buildTab(),
            // _buildTabBarView(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('初始化');
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
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3.h,
        labelColor: Color.fromRGBO(0, 0, 0, 1),
        labelStyle: TextStyle(
          fontSize: 15.sp,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        controller: TabController(
          initialIndex: 0,
          length: 2,
          vsync: this,
        ),
        tabs: <Widget>[
          Tab(
            text: '大家对Ta的印象',
          ),
          Tab(
            text: '服务完工照',
          ),
        ],
      ),
    );
  }

  _buildTabBarView() {
    return Container(
      child: TabBarView(
        children: [
          Center(
            child: Text('大家对Ta的印象'),
          ),
          Center(
            child: Text('服务完工照'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Container(
        width: 375.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/master/top_bg_img@2x.png'),
            //image: NetworkImage('https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/cc11728b4710b91293eda145c8fdfc0392452258.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SafeArea(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [_buildHeader(), _buildBody()],
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: _MasterHomeBottomAppBar(),
        ),
      ),
    );
  }
}

// 底部按钮区域
class _MasterHomeBottomAppBar extends StatelessWidget {
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
        ]);
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
