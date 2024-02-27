import 'package:azkar/shared/widget/azkar_list_item.dart';
import 'package:flutter/material.dart';

class BodyAzkarDispalyScreen extends StatefulWidget {
  const BodyAzkarDispalyScreen({super.key});

  @override
  State<BodyAzkarDispalyScreen> createState() => _BodyAzkarDispalyScreenState();
}

class _BodyAzkarDispalyScreenState extends State<BodyAzkarDispalyScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return AzkarListItem(
                arrange: index + 1,
                counter: index,
              );
            },
          )
        ],
      ),
    );
  }
}
