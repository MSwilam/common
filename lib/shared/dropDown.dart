import 'package:flutter/material.dart';
import 'package:common/shared/constants.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class DropdownButtonWidgetFuture extends StatelessWidget {
  const DropdownButtonWidgetFuture(
      {super.key, required this.futureFnc, required this.DropDownFields});
  final Future<Object> futureFnc;
  final DropdownButtonFormField<Object> DropDownFields;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureFnc,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text(
            "error_msg".tr(),
            style: errorTextStyle,
          );
        } else {
          List<Object> data = snapshot.data as List<Object>;
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropDownFields);
        }
      },
    );
  }
}

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({super.key, required this.DropDownFields});
  final DropdownButtonFormField<Object> DropDownFields;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: DropDownFields);
  }
}
