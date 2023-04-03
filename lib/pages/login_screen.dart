import 'package:flutter/material.dart';
import 'package:infoedu/widgets/custom_button.dart';
import 'package:infoedu/widgets/custom_text_field.dart';
import 'package:infoedu/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Acessar"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50.0,),
                const SizedBox(
                  height: 220.0,
                  child: Image(
                    image: AssetImage("assets/LOGO.png"),
                  ),
                ),
                kSpacing,
                CustomTextField(
                  hintTextInput: "Email",
                  icon: Icons.supervised_user_circle,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                kSpacing,
                CustomTextField(
                  hintTextInput: "Senha",
                  icon: Icons.lock,
                  suffixIcon: null,
                  textInputType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.go,
                ),
                kSpacing,
                CustomButton(
                  function: (){},
                  textInfo: "Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
