import 'package:flutter/material.dart';




class Account extends StatefulWidget {

  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Ruqaya Maed',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                height: size.height * 0.15,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardProfile(
                        name: 'Profile',
                        iconData: Icons.manage_accounts_outlined),
                    cardProfile(
                        name: 'Support', iconData: Icons.headset_mic_outlined),
                    cardProfile(
                        name: 'Payments', iconData: Icons.payment_outlined),
                    cardProfile(name: 'Language', iconData: Icons.language),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              totersCash(size),
              SizedBox(
                height: 12,
              ),
              promotions(size),
              SizedBox(height: 12),
              accountDetails(size),
              SizedBox(height: 12),
              helpcenter(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget totersCash(Size size) {
    return Container(
      padding: EdgeInsets.all(8),
      height: size.height * 0.2,
      width: size.width * 0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                'Toters Cash',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.priority_high,
                color: Colors.teal,
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.wallet_travel_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'Wallet',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                'IQD O',
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.grey,
              ),
              Text(
                'Add Funds',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_upward_outlined,
                color: Colors.grey,
              ),
              Text(
                'Send Funds',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget promotions(Size size) {
    return Container(
      padding: EdgeInsets.all(8),
      height: size.height * 0.2,
      width: size.width * 0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                'Promotions',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.credit_card_off_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'Credits',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                'IQD O',
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.sell_outlined,
                color: Colors.grey,
              ),
              Text(
                'Add Promo Code',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget accountDetails(Size size) {
    return Container(
      padding: EdgeInsets.all(8),
      height: size.height * 0.3,
      width: size.width * 0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                'Account Details',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.place_outlined,
                color: Colors.grey,
              ),
              Text(
                'Addresses',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
              ),
              Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.room_preferences_outlined,
                color: Colors.grey,
              ),
              Text(
                'Preferences',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.people_outline,
                color: Colors.grey,
              ),
              Text(
                'Refer a friend',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget helpcenter(Size size) {
    return Container(
      padding: EdgeInsets.all(8),
     // height: size.height * 0.2,
      width: size.width * 0.95,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                'Help Center',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.headset_mic_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'Get Support',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.message_outlined,
                color: Colors.grey,
              ),
              Text(
                'Support Tickets',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.policy_outlined,
                color: Colors.grey,
              ),
              Text(
                'Legal',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(
                Icons.error_outline_outlined,
                color: Colors.grey,
              ),
              Text(
                'Faq',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}






























