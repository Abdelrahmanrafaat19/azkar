import 'package:azkar/model/azkar_model.dart';
import 'package:azkar/shared/widget/fiannly_container.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustamAzkarList extends StatefulWidget {
  List<AzkarModel> azkarModel;
  bool visibleToggle;

  CustamAzkarList({
    super.key,
    required this.azkarModel,
    required this.visibleToggle,
  });

  @override
  State<CustamAzkarList> createState() => _CustamAzkarListState();
}

List<String> azkarName = [];

class _CustamAzkarListState extends State<CustamAzkarList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.azkarModel.length,
      itemBuilder: (context, index) {
        return FinallyContainer(
          azkarData: widget.azkarModel[index].subTitles,
          azkarModel: widget.azkarModel[index],
          visibleToggle: false,
        );
      },
    );
  }
}
