import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ZTBLMobile/pages/tab_pages.dart';
class Information extends StatelessWidget {
  Information({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xff1873e8), //or set color with: Color(0xFF0000FF)
    ));
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ZTBL Mobile'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            indicatorWeight: 1.0,    
            tabs: [
              Tab(text: 'FAQs'),
              Tab(text: 'Circulars'),
              Tab(text: 'Contact Us'),
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: TabBarView(
            children: [
                FAQs(),
                Circulars(),
                ContactUs(),
            ],
          ),
        ),
      ),
    );
  }
}