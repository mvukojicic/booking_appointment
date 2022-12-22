import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    this.cardIcon,
    this.cardTitle = '',
    this.repairCardSelected = false,
    this.complaintsCardSelected = false,
  });

  final IconData? cardIcon;
  final String cardTitle;
  final bool repairCardSelected;
  final bool complaintsCardSelected;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  final background = const Color(0xFFE7ECEF);
  final boxShadow = const Color(0xFFA7A9AF);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: widget.repairCardSelected || widget.complaintsCardSelected
            ? Border.all(color: Colors.blueAccent)
            : null,
        color: widget.repairCardSelected || widget.complaintsCardSelected
            ? Colors.lightBlueAccent
            : Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: boxShadow,
            offset: const Offset(
              10,
              10,
            ),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            widget.cardIcon,
            size: 100,
            color: widget.complaintsCardSelected || widget.repairCardSelected
                ? Colors.white
                : Colors.grey,
          ),
          Text(
            widget.cardTitle,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
