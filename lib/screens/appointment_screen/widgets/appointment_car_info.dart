import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({
    super.key,
    required this.setUserName,
    required this.setUserPhone,
    required this.setCarModel,
    required this.setCarChassis,
    required this.setTypeOfService,
    required this.setDetails,
  });

  final void Function(String) setUserName;
  final void Function(String) setUserPhone;
  final void Function(String) setCarModel;
  final void Function(String) setCarChassis;
  final void Function(String) setTypeOfService;
  final void Function(String) setDetails;

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: DecoratedBox(
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
              enableUnderline: true,
              setTextField: widget.setUserName,
            ),
            InputTextField(
              labelText: 'Broj Telefona',
              enableUnderline: true,
              setTextField: widget.setUserPhone,
            ),
            InputTextField(
              labelText: 'Model i Tip Automobila',
              enableUnderline: true,
              setTextField: widget.setCarModel,
            ),
            InputTextField(
              labelText: 'Broj Sasije',
              // textFieldController: nameController,
              enableUnderline: true,
              setTextField: widget.setCarChassis,
            ),
            InputTextField(
              labelText: 'Vrsta Servisa',
              enableUnderline: true,
              setTextField: widget.setCarChassis,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            InputTextField(
              labelText: 'Detaljnije opisite vas kvar',
              maxLines: 8,
              inputBorder: InputBorder.none,
              setTextField: widget.setDetails,
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
    required this.setTextField,
    this.maxLines,
    this.inputBorder,
    this.enableUnderline,
  });

  final String labelText;
  final int? maxLines;
  final InputBorder? inputBorder;
  final bool? enableUnderline;
  final void Function(String) setTextField;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      onChanged: setTextField,
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
