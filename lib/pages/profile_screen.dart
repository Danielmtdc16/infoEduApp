import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 20.0),
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
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 80.0,
                        ),
                        Text(
                          "Isaura Terra",
                          style: knameText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "#126",
                          style: kcodeText,
                        ),
                        SizedBox(
                          height: 10.0,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "INFORMAÇÕES",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "IDADE",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    const Text(
                      "18 anos",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "DATA DE NASCIMENTO",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    const Text(
                      "24/08/2004",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "E-MAIL",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    const Text(
                      "saura@sistemasca.com",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "TELEFONE",
                      style: klabelText,
                    ),
                    const Text(
                      "(35) 98212-1542",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "ENDEREÇO",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    const Text(
                      "Rua Valdomiro Oliveira, 290, Bairro Bela Vista, Cristino Castro - PI",
                      style: kinfoText,
                    ),
                    kSpaceBetweenLabels,
                    const Text(
                      "RESPONSÁVEIS",
                      style: klabelText,
                    ),
                    kSpaceBetweenInfoText,
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: responsibles.length,
                        itemBuilder: (context, index) {
                          return Text(
                            responsibles[index],
                            style: kinfoText,
                          );
                        }),
                  ],
                ),
              ),
              kSpacing,
            ],
          ),
        ),
      ),
    );
  }
}
