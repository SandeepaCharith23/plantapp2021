import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorForm extends StatelessWidget {
  const ErrorForm({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      errors.length,
      (index) => formErrorText(context: context, errors: errors[index]),
    ));
  }

  Row formErrorText({BuildContext? context, required String errors}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: MediaQuery.of(context!).size.width / 30,
          width: MediaQuery.of(context).size.width / 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        Text(errors),
      ],
    );
  }
}
