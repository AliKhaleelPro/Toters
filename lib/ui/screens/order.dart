import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          bottom: TabBar(
            indicatorColor: Colors.teal,
            tabs: [
              Tab(
                child: Text(
                  'Past Order',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
              Tab(
                child: Text(
                  'Upcoming',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: Text('You do not have any past orders!'),
            ),
            Tab(
              child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('images/undraw_on_the_way_re_swjt.svg',height: 100,),
                      SizedBox(height: 20,),
                      Text('No upcoming orders',style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
