import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Butler extends StatelessWidget {
  const Butler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        shadowColor: Colors.transparent,
        title:  Text('We deliver anything that fits on a motorbike!'),
        toolbarHeight: 100
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 40,),
            Text('Request a butler to:',style: TextStyle(fontSize: 20),),

            SizedBox(height: 30,),

            buildContainer(height: 120,title:'Deliver your stuff' ,dec: 'e.g. You forgot your keys at home and need to get them delivered to the office'),
            SizedBox(height: 40,),
            buildContainer(height: 150, title: "Buy something", dec: "Didn't find what you were "
                "looking for at our stores? Our butlers "
                "can buy whatever you need from your store ofchoice."),

          ],
        ),
      ),
    );
  }

  Widget buildContainer({required double height, required String title, required String dec}) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: height,

            decoration: BoxDecoration(
                color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(title,style: TextStyle(fontSize: 18,color: Colors.teal),),
                        SizedBox(height: 10,),
                        Text(dec,
                        style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset('images/undraw_on_the_way_re_swjt.svg',height: 75,),

                Icon(Icons.arrow_forward_ios,color: Colors.teal,)

              ],
            ),
          );
  }
}
