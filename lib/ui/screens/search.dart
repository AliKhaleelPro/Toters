import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {

  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeffff),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                  Text(
                    'Search for store or item',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //Search----------

            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'images/undraw_on_the_way_re_swjt.svg',
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                  // Image.asset('images/undraw_On_the_way_re_swjt.png',color: Colors.teal,),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Anything!',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'New on Toters! If it fits on a motorbike we can deliver it. ',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            buildContainer(
              context,
              'images/IMAGE 2022-09-20 03:55:37.jpg',
              'Happy Hour 🤩',
              'Get happy with up to 50% OFF from select stores before 7 PM!',
            ),
            buildContainer(
              context,
              'images/IMAGE 2022-09-20 03:55:56.jpg',
              'Weekly Discounts',
              'Get up to 50% OFF on these selected restaurants this week!',
            ),
            buildContainer(
              context,
              'images/IMAGE 2022-09-20 03:56:05.jpg',
              'Cashback ',
              'Earn back credits and redeem them on your future orders',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
      BuildContext context, String img, String title, String subTitel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.95,
        height: 170,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                height: 200,
                width: 210,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subTitel,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
