import 'package:azkar/model/list_of_azkar.dart';
import 'package:azkar/shared/widget/azkar_list_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyAzkarDispalyScreen extends StatefulWidget {
  List<AzkarListModel> azkarData;
  BodyAzkarDispalyScreen({super.key, required this.azkarData});

  @override
  State<BodyAzkarDispalyScreen> createState() => _BodyAzkarDispalyScreenState();
}

class _BodyAzkarDispalyScreenState extends State<BodyAzkarDispalyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.azkarData.length,
      itemBuilder: (context, index) {
        return AzkarListItem(
          zkr: widget.azkarData[index].zekr,
          counter: widget.azkarData[index].counter,
        );
      },
    );
  }
}
