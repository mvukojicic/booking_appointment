import 'package:book_repair/router/routes.dart';
import 'package:book_repair/widgets/shop_card/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewCards extends StatefulWidget {
  const GridViewCards({super.key});

  @override
  State<GridViewCards> createState() => _GridViewCardsState();
}

class _GridViewCardsState extends State<GridViewCards> {
  bool repairCardSelected = false;
  bool complaintsCardSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
      child: Column(
        children: [
          const Text(
            'Izaberite jednu od ponudjenih opcija.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Divider(color: Colors.lightBlueAccent),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    repairCardSelected = !repairCardSelected;
                    if (complaintsCardSelected) {
                      complaintsCardSelected = false;
                    }
                  });
                },
                child: CustomCard(
                  cardTitle: 'Zakazite Popravku',
                  cardIcon: Icons.car_repair,
                  repairCardSelected: repairCardSelected,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    complaintsCardSelected = !complaintsCardSelected;
                    if (repairCardSelected) {
                      repairCardSelected = false;
                    }
                  });
                },
                child: CustomCard(
                  cardTitle: 'Reklamacije',
                  cardIcon: Icons.car_crash_outlined,
                  complaintsCardSelected: complaintsCardSelected,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              if (repairCardSelected) {
                Navigator.pushNamed(context, Routes.appointmentScreen);
              }
              if (complaintsCardSelected) {
                Navigator.pushNamed(context, Routes.homeScreen);
              }
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              height: 60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF020024),
                    Color(0xFF246EE9),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: CupertinoColors.activeBlue,
                boxShadow: [
                  BoxShadow(
                    color: CupertinoColors.systemBlue,
                    spreadRadius: 0.1,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'NASTAVI DALJE',
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
