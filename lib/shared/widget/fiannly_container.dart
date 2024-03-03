import 'package:azkar/model/azkar_model.dart';
import 'package:azkar/model/list_of_azkar.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/custam_list_drop_down_container_azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class FinallyContainer extends StatefulWidget {
  AzkarModel azkarModel;
  bool visibleToggle;
  List<AzkarMainModel> azkarData;
  FinallyContainer({
    super.key,
    required this.azkarModel,
    required this.visibleToggle,
    required this.azkarData,
  });

  @override
  State<FinallyContainer> createState() => _FinallyContainerState();
}

class _FinallyContainerState extends State<FinallyContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 55.h,
          padding: EdgeInsets.only(left: 30.w, right: 40.w),
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: 30.h,
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6), // Set the shadow color
                  spreadRadius: 3, // Set how far the shadow spreads
                  blurRadius: 7, // Set the blur radius
                  offset: const Offset(0, 5), // Set the offset of the shadow
                ),
              ],
              border: Border.all(
                color: widget.visibleToggle == false
                    ? Colors.transparent
                    : const Color(0xffA85000),
              ),
              color: widget.visibleToggle == false
                  ? SharedColor.mainBrown
                  : Colors.white,
              borderRadius: BorderRadius.circular(30.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.azkarModel.mainTitle,
                style: TextStyle(
                  color: widget.visibleToggle == false
                      ? Colors.white
                      : SharedColor.babyBrown,
                  fontFamily: "amiri",
                  fontSize: 20.w,
                ),
              ),
              widget.visibleToggle == false
                  ? IconButton(
                      onPressed: () {
                        widget.visibleToggle = !widget.visibleToggle;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        widget.visibleToggle = !widget.visibleToggle;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.arrow_drop_up,
                        color: widget.visibleToggle == false
                            ? Colors.white
                            : SharedColor.babyBrown,
                      ),
                    )
            ],
          ),
        ),
        Visibility(
          visible: widget.visibleToggle,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.azkarModel.subTitles.length,
            itemBuilder: (context, index) {
              return CustomListDropDownContainer(
                azkarData: widget.azkarModel.subTitles[index].azkarListModel,
                continerName: widget.azkarModel.subTitles[index].mainTitl,
              );
            },
          ),
        )
      ],
    );
  }
}
