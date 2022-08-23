import 'package:flutter/material.dart';

class HeadlinePage extends StatelessWidget {
  final String title;
  final bool active;
  const HeadlinePage({Key? key, required this.title, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 20, right: 30),
    child: Text(title,style: Theme.of(context).textTheme.button!.copyWith(
      color: active ? Colors.black : Colors.red.withOpacity(.7)
    ),),
    );
  }
}
