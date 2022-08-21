import 'package:delivery/view/pages/widgets/text_entryfield.dart';
import 'package:flutter/material.dart';

class EmailPasswordWidgetPage extends StatelessWidget {
  const EmailPasswordWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return Column(
    children:  [
      TextEntryField(),
      // textEntryField("Password", isPassword: true),
    ],
  );
  }
}