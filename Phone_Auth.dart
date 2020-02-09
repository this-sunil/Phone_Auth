import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_order_app/pages/MainScreen.dart';
class PhoneAuth extends StatefulWidget {
  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  FirebaseUser user;
  FirebaseAuth auth;
  String phoneNo;
  String smsCode;
  String verificationId;
  Future verifyPhone() async
  {
        final PhoneCodeAutoRetrievalTimeout autoRetrive=(String verId){
          this.verificationId=verId;
        };
        final PhoneCodeSent smsCodeSent=(String verId,[int forceCodeReSend]){
          this.verificationId=verId;
          smsCodeDialog(context).then((value){
            print('Signed In');
          });

        };
        final PhoneVerificationCompleted verifiedSuccess=(user)
        {
          print('verified');
        };
        final PhoneVerificationFailed verifiFailed=(AuthException exception){
          print('${exception.message}');
        };
        await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: this.phoneNo,
            timeout: const Duration(seconds: 5),
            verificationCompleted: verifiedSuccess,
            verificationFailed: verifiFailed,
            codeSent: smsCodeSent,
            codeAutoRetrievalTimeout: autoRetrive,
        );
  }
  Future<bool> smsCodeDialog(BuildContext context){
    return showDialog(context: context,
    barrierDismissible: false,
      builder: (BuildContext context){
          return AlertDialog(
            title: Text("Enter Sms Code"),
            content: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value){
                this.smsCode=value;
              },
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(onPressed: (){
                FirebaseAuth.instance.currentUser().then((user){
                  if(user!=null)
                    {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(uid: this.phoneNo)));
                    }
                  else
                    {
                      Navigator.of(context).pop();
                      signIn();
                    }
                });
              },
                  child: Text('Done'),

              ),
            ],
          );
      }
    );
  }
  signIn() async {

    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(uid: this.phoneNo)));
    user = (await auth.signInWithCredential(credential)) as FirebaseUser;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(

                decoration: InputDecoration(
                  hintText: 'Enter a phone number',
                  labelText: 'Enter a phone number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                  ),
                ),
                keyboardType:TextInputType.phone,
                onChanged:(value){
                  this.phoneNo = value;
                },
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: verifyPhone,
                  child:Text('Verify'),
                  textColor: Colors.white,
                  elevation: 7.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
