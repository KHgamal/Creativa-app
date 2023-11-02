import 'package:flutter/material.dart';

import '../../constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    List locations = [
      "assets/images/img.png",
      "assets/images/img_1.png",
      "assets/images/img_2.png",
      "assets/images/img_3.png",
      "assets/images/img_4.png",
      "assets/images/img_5.png"
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset("assets/images/Logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 8, bottom: 12),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      VerticalDivider(
                        color: blue,
                        thickness: 3,
                      ),
                      Text("About Creativa",
                          style: TextStyle(color: blue, fontSize: 15))
                    ],
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12),
                child:  Text(
                          "Creativa is a national initiative launched by MCIT with the aim of"
                          " promoting the new technology support standard for youth in Egypt."
                          " The initiative bridges the gap between technology skills and on the"
                          " ground requirements from the market. ",
                          style:
                              TextStyle( fontSize:15),
                        ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      VerticalDivider(
                        color: blue,
                        thickness: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Our Vision",
                              style: TextStyle(color: blue, fontSize: 15)),
                          Text("DIGITAL EGYPT",
                              style: TextStyle(color: amber, fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(12),
                elevation: 10,
                //color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                      "In alignment with Egypt Vision 2030, and Egypt’s digital "
                      "transformation strategy, the Ministry of Communications and Information Technology (MCIT) "
                      "has embarked on building Digital Egypt.Digital Egypt is an all-encompassing vision"
                      " and plan, laying the foundations for the transformation of Egypt into a digital society."),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: blue,
                                thickness: 3,
                              ),
                              Text("CONTACT US",
                                  style: TextStyle(color: blue, fontSize: 15))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Text(
                                "Get in touch to discuss your employee wellbeing needs today."
                                " Please give us a call, drop us an email or fill out the contact form and"
                                " we’ll get back to you."),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: amber,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "http://creativa@iti.gov.eg/",
                              style: TextStyle(color: blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/connect.png',
                    width: 100,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      VerticalDivider(
                        color: blue,
                        thickness: 3,
                      ),
                      Text("Locations",
                          style: TextStyle(color: blue, fontSize: 15))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: locations.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              locations[index],
                              width: 100,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
              ),
              const SizedBox(height: 12,)
            ],
          ),
        ),
      ),
    );
  }
}
