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
  List<String> responsibles = ["Alexa", "José"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Nome do Aluno"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 30.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const PhotoAttachment(),
              kSpacing,
              const CustomTextField(
                hintTextInput: "Nome",
                icon: Icon(Icons.account_circle),
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              kSpacing,
              const CustomTextField(
                hintTextInput: "Data de Nascimento",
                icon: Icon(Icons.calendar_month),
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              kSpacing,
              const CustomTextField(
                hintTextInput: "Endereço",
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: 5,
              ),
              kSpacing,
              const Divider(),
              const Text(
                "Responsáveis",
                style: TextStyle(color: Colors.black45, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              kSpacing,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: responsibles.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: kCinzaMuitoClaro,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          responsibles[index],
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5.0,),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
