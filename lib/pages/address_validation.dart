import 'package:app_1/widgets/account_widget.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.withOpacity(0.6),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24, color: Colors.white.withOpacity(0.9)),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            //profile icon
            Icon(
              Icons.person_2_outlined,
              color: Colors.black,
              size: 60,
            ),
            SizedBox(
              height: 30,
            ),
            //name
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidget(
                      icon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: 'Aromi',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //email
                    AccountWidget(
                      icon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: 'aromibenard@gmail.com',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //phone number
                    AccountWidget(
                      icon: Icon(
                        Icons.phone_android_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: '0792775784',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //address
                    AccountWidget(
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: 'Your Address',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
