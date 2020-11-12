import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laundry/authService/authService.dart';
import 'package:laundry/widget/rounded_button.dart';
import 'package:laundry/widget//rounded_input_field.dart';
import 'package:laundry/widget/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var name , password , token;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
//                      Text(
//                        "SIGNIN",
//                        style: TextStyle(fontWeight: FontWeight.bold),
//                      ),
                      SizedBox(height: size.height * 0.03),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        height: size.height * 0.35,
                      ),
                      RoundedInputField(
                        hintText: "Username",
                        onChanged: (val) {
                          name = val;
                        },
                      ),
                      RoundedPasswordField(
                        onChanged: (val) {
                          password = val;
                        },
                      ),
                      RoundedButton(
                        text: "SIGNIN",
                        press: () {
                          AuthService().login(name , password).then((val){
                            if(val.data['success']){
                              token = val.data['token'];
                              Fluttertoast.showToast(msg:'Authenication successful',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0,);
                            }
                          });
                        },
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        children: <Widget>[
                          Center(
//                            child: Text(
//                                "already have an account"
//                            ),
                          ),
                          FlatButton( onPressed: null, child:null  ),
                        ],
                      ),

                    ]
          )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
