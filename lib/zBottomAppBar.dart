import 'package:flutter/material.dart';
import 'package:untitled3/zTabBar.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}


class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int currentIndex=0;
  List _pages=[
    MyTabBarView(),
    Text('2'),
    Text('3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: _pages[currentIndex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex=0;
                      });
                    },
                    child: Icon(Icons.home,
                    size: 30,
                    color: currentIndex==0? Colors.white: Colors.black,
                    ),
                  ),
                  Container(
                    height:currentIndex==0 ?10: 0,
                    width: currentIndex==0 ?10: 0,
                    decoration: BoxDecoration(
                        color: currentIndex==0? Colors.white: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex=1;
                  });
                },
                child: Icon(Icons.account_circle_rounded,
                  color: currentIndex==1? Colors.white: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex=2;
                    print('cliked');
                  });
                },
                child: Icon(Icons.person,
                  color: currentIndex==2? Colors.white: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


