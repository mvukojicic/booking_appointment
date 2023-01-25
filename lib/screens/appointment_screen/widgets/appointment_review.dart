import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentReview extends StatelessWidget {
  AppointmentReview({
    super.key,
    required this.userName,
    required this.userPhone,
    required this.dateTime,
    required this.carModel,
    required this.carChassis,
    required this.typeOfService,
    required this.detailsService,
  });

  DateTime dateTime;
  String userName;
  String userPhone;
  String carModel;
  String carChassis;
  String typeOfService;
  String detailsService;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 5),
          ],
        ),
        child: Column(
          children: [
            ReviewTextRow(keyText: 'Korisnicko Ime:', valueText: 'Mihailo'),
            ReviewTextRow(keyText: 'Telefon:', valueText: 'valueText'),
            ReviewTextRow(
                keyText: 'Datum zakazivanja:', valueText: 'valueText'),
            ReviewTextRow(
                keyText: 'Model i tip automobila:', valueText: 'valueText'),
            ReviewTextRow(keyText: 'Broj sasije:', valueText: 'valueText'),
            ReviewTextRow(keyText: 'Vrsta servisa:', valueText: 'valueText'),
            ReviewTextRow(keyText: 'Detaljniji opis:', valueText: 'valueText'),
          ],
        ),
      ),
    );
  }
}

class ReviewTextRow extends StatelessWidget {
  const ReviewTextRow({
    super.key,
    required this.keyText,
    required this.valueText,
  });

  final String keyText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            valueText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ],
      ),
    );
  }
}
