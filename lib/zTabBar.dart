


import 'package:flutter/material.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({Key? key}) : super(key: key);

  @override
  State<MyTabBarView> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView> with TickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =TabController(length: 2, vsync: this);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TabBar(
                    onTap: null,
                    labelColor: Colors.black,
                   indicatorColor: Colors.transparent,
                    //indicatorSize:TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    tabs: [
                      Text('Places', style: TextStyle(
                        fontSize: 20
                      ),),
                      Text('Inspiration', style: TextStyle(
                          fontSize: 20
                      )),
                    ],
                  ),
                  Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              height: 300.0,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext, Context){
                          return Container(
                            margin: EdgeInsets.only(top: 20,right: 10),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                                //image: DecorationImage(image: AssetImage('images/bilal.jpg'), fit: BoxFit.cover)),
                            ) );
                        }),
                  ),
                  Text('Bilal'),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}
