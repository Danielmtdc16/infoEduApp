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
      backgroundColor: Colors.white.withOpacity(0.89),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 30.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color(0xFF00B53F),
                    margin: const EdgeInsets.only(top: 70.0),
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 80.0,
                        ),
                        const Text(
                          "Isaura Terra",
                          style: knameText,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "#126",
                          style: kcodeText,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      PhotoAttachment(),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INFORMAÇÕES",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kSpaceBetweenLabels,
                    Text("E-MAIL", style: klabelText),
                    kSpaceBetweenInfoText,
                    Text(
                      "saura@sistemasca.com",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    Text(
                      "TELEFONE",
                      style: klabelText,
                    ),
                    Text(
                      "(35) 98212-1542",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    Text(
                      "IDADE",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    Text(
                      "18 anos",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
