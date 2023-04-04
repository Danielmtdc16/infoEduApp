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
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Acessar"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.none,
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
                const CustomTextField(
                  hintTextInput: "Email",
                  icon: Icons.account_circle,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                kSpacing,
                CustomTextField(
                  hintTextInput: "Senha",
                  icon: Icons.lock,
                  suffixIcon: active ? GestureDetector(
                    child: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                    onTap: (){
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ) : null,
                  textInputType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.go,
                  obscureText: _showPassword == false ? false : true,
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
