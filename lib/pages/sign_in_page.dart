import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Sign in to Continue',
                ),
                SizedBox(height: 50.0),
                Text(
                  'Email Address',
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_email.png',
                          width: 17,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            // style: primaryTextStyle,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Your Email Address',
                              hintStyle: subtitleTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Password',
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_password.png',
                          width: 17,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            // style: primaryTextStyle,
                            obscureText: true,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Your Password',
                                hintStyle: subtitleTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        child: Text(
                          'Sign Up',
                          style: purpleTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
