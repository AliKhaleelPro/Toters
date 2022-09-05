import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width:MediaQuery.of(context).size.width*0.8,
                child: Text('Search'),
              ),
              //Search----------

              Container(
                height: 100,
                width: double.infinity,
                color: Colors.teal,
                child: Row(
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?'
                        'q=tbn:ANd9GcTUsWKz4x8MM6yn4n_fZ2tdFhakQya7fShzoQ&usqp=CAU'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Anything!',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'New on Toters! If it fits on a motorbike we can deliver it. ',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
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

              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width *0.9,
                height: 200,
                child: Row(
                  children: [
                    Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTglLIa_6AumVluqA49hjAIHG-5IctUuOmVNA&usqp=CAU',
                          height: 200,
                          width: 200,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Happy Hour'),
                        Expanded(
                          child: Text(
                            'Get happy with up to 50% OFF from select stores before 7 PM!',


                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
