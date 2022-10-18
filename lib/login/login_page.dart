import 'package:catalog/home1.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey=GlobalKey<FormState>();
  TextEditingController userController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/login.webp',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
                child: Form(
                  key: formkey ,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter User name',
                          label: Text('User name'),
                          suffixIcon: Icon(Icons.person),
                        ),
                        controller: userController,
                        validator: ((value) {
                          if(value!=null){
                            return "plz enter user name";
                          };
                          return null;
                        }),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            label: Text('Password'),
                            suffixIcon: Icon(Icons.remove_red_eye)),
                        controller: passController,
                        validator: ((value){
                          if(value!=null){
                            return "plz enter password";
                          }
                         else if(value!.length<6){
                            return "password should be atleast 6 ";
                          }
                         return null;

                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: Text('Login'),
                        style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                        onPressed: () {
                          if(formkey.currentState!.validate()){
                            setState(() {
                              userController.text;
                              passController.text;
                            });
                          }
                          if(passController.text.isEmpty || userController.text.isEmpty){
                            Fluttertoast.showToast(
                                msg: "please enter username password",
                            );
                            print(passController.text);


                          }
                          else{

                            if(userController.text== 'Faaiz' && passController.text == '123456'){
                              Fluttertoast.showToast(msg: "Login successfully");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                            }
                            else{
                              Fluttertoast.showToast(msg: "wrong user Name ${userController.text} and ${passController.text}");
                            }


                          }















     },)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
