import 'package:flutter/material.dart';
import 'package:infoedu/widgets/custom_text_field.dart';
import 'package:infoedu/widgets/custom_button.dart';
import 'package:infoedu/widgets/photo_attachment.dart';
import 'package:infoedu/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Nome do Aluno"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(right: 15.0, left: 15.0, top: 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PhotoAttachment(),
              kSpacing,
              CustomTextField(
                hintTextInput: "Nome",
                icon: Icons.account_circle,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              kSpacing,
              CustomTextField(
                hintTextInput: "Data de Nascimento",
                icon: Icons.calendar_month,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              kSpacing,
              CustomTextField(
                hintTextInput: "Logradouro",
                icon: Icons.add_road,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              kSpacing,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        hintTextInput: "Número",
                        icon: Icons.onetwothree,
                        textInputType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: CustomTextField(
                        hintTextInput: "Bairro",
                        icon: Icons.place,
                        textInputType: TextInputType.text,
                    ),
                  ),
                ],
              ),
              kSpacing,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        hintTextInput: "Cidade",
                        icon: Icons.location_city,
                        textInputType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: CustomTextField(
                        hintTextInput: "Estado",
                        icon: Icons.map,
                        textInputType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
