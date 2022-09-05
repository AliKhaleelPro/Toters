import 'package:flutter/material.dart';



class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Ruqaya Maed',style: TextStyle(color: Colors.black),),
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(

          children: [
            SizedBox(height: 8,),
            Container(
              height:size.height*0.15 ,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
                    
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardProfile(name: 'Profile',iconData:Icons.manage_accounts_outlined ),
                  cardProfile(name: 'Support',iconData:Icons.headset_mic_outlined),
                  cardProfile(name: 'Payments',iconData:Icons.payment_outlined ),
                  cardProfile(name: 'Language',iconData:Icons.language ),
                ],
              ),
            ),

            SizedBox(height: 8,),

            totersCash(size),
            SizedBox(height: 12,),






          ],
        ),
      ),
    );
  }

  Widget totersCash(Size size) {
    return Container(
            padding: EdgeInsets.all(8),
            height:size.height*0.2 ,
            width: size.width * 0.95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Row(
                children: [
                  Text('Toters Cash',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Icon(Icons.priority_high,color: Colors.teal,),
                ],
              ),
              Divider(color: Colors.grey,),


              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.wallet_outlined,color: Colors.grey,),

                    Text('Wallet',style: TextStyle(fontSize: 15,),),
                  ],
                ),


                 Text('IQD O',style: TextStyle(fontSize: 15,color: Colors.teal),),




                ],
              ),
                Divider(color: Colors.grey,),
                Row(
                  children: [
                    Icon(Icons.add,color: Colors.grey,),

                    Text('Add Funds',style: TextStyle(fontSize: 15,),),
                  ],
                ),
                Divider(color: Colors.grey,),
                Row(
                  children: [
                    Icon(Icons.arrow_upward_outlined,color: Colors.grey,),

                    Text('Send Funds',style: TextStyle(fontSize: 15,),),
                  ],
                ),

              ],
            ),
          );
  }

  Widget cardProfile({required String name, required IconData iconData}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
                    children: [
                      Container(
                        height:60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey[200],
                        ),
                          child: Icon(iconData,size: 30,color: Colors.grey,),
                      ),
                      SizedBox(height: 10,),
                      Text(name),
                    ],
                  ),
    );
  }
}
