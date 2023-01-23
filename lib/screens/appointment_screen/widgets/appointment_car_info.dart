import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key});

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 5),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputTextField(
              labelText: 'Vase Ime',
              textFieldController: nameController,
              enableUnderline: true,
            ),
            InputTextField(
              labelText: 'Broj Telefona',
              textFieldController: nameController,
              enableUnderline: true,
            ),
            InputTextField(
              labelText: 'Model i Tip Automobila',
              textFieldController: nameController,
              enableUnderline: true,
            ),
            InputTextField(
              labelText: 'Broj Sasije',
              textFieldController: nameController,
              enableUnderline: true,
            ),
            InputTextField(
              labelText: 'Vrsta Servisa',
              textFieldController: nameController,
              enableUnderline: true,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            InputTextField(
              labelText: 'Detaljnije opisite vas kvar',
              textFieldController: nameController,
              maxLines: 8,
              inputBorder: InputBorder.none,
            )
          ],
        ),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.labelText,
    required this.textFieldController,
    this.maxLines,
    this.inputBorder,
    this.enableUnderline,
  });

  final String labelText;
  final TextEditingController textFieldController;
  final int? maxLines;
  final InputBorder? inputBorder;
  final bool? enableUnderline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: textFieldController,
      decoration: InputDecoration(
        border: inputBorder,
        labelText: labelText,
        contentPadding: const EdgeInsets.all(10),
        labelStyle: const TextStyle(
          fontSize: 16,
          color: CupertinoColors.inactiveGray,
        ),
        enabledBorder: enableUnderline != null
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.3),
                ),
              )
            : InputBorder.none,
        focusedBorder: enableUnderline != null
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                ),
              )
            : InputBorder.none,
      ),
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
