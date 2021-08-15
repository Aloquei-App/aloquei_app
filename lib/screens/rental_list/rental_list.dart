import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:aloquei_app/screens/core/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/rental_present_card.dart';
import 'components/rental_title.dart';
import 'components/rental_unit_card.dart';

class RentalList extends StatelessWidget {
  const RentalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            RentalTitle("Moradias "),
            RentalPresentCard(
              icon: FontAwesomeIcons.suitcase,
              title: "Chegou a hora de alugar a sua moradia!",
              subtitle: "Compartilhe seus espaço e tenha benefícios dentro do app." ,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RentalTitle("Suas Moradias"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: RentalUnitCard(
                      "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
                      "Amytivylle",
                      "Ronald DeFeo Jr.",
                      "09/fev/2020 - 15/fev/2020",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
