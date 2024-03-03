class AzkarMainModel {
  List<AzkarListModel> azkarListModel;
  String mainTitl;
  AzkarMainModel({
    required this.azkarListModel,
    required this.mainTitl,
  });
}

class AzkarListModel {
  int counter;
  String zekr;
  AzkarListModel({
    required this.counter,
    required this.zekr,
  });
}
