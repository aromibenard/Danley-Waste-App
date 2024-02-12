import 'package:app_1/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    var nameController = TextEditingController();
    var signUpImages = ["assets/images/g.png"];
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage('assetName'), //change
                ),
              ),
            ),

            //user name
            AppTextField(
                hintText: 'Name',
                icon: Icons.person_3_outlined,
                textController: nameController),
            SizedBox(
              height: 20,
            ),
            //your email
            AppTextField(
                hintText: 'Email',
                icon: Icons.email_outlined,
                textController: emailController),
            SizedBox(
              height: 20,
            ),
            //your password
            AppTextField(
                hintText: 'Password',
                icon: Icons.password_outlined,
                textController: passwordController),
            SizedBox(
              height: 20,
            ),

            //user phone
            AppTextField(
                hintText: 'Phone',
                icon: Icons.phone_android_outlined,
                textController: phoneController),
            SizedBox(
              height: 20,
            ),

            Container(
              width: 60, //dimensions.screenWidth/2
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue.withOpacity(0.6),
              ),
              child: Center(
                  child:
                      Text('Sign Up')), //bigtext //size: dimensions.font20/2,
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  text: "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  )),
            ),
            //dimensions.screenWidth/13
            SizedBox(
              height: 20, //dimensions.screenheight*0.05
            ),
            //sign up options
            RichText(
              text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  text: "Or sign up with",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  )),
            ),
            Wrap(
              children: List.generate(
                  3,
                  (index) => CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("assets/images/logo2" + signUpImages[0]),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
