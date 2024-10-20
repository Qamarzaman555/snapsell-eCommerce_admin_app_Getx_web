import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var dataList = <Map<String, dynamic>>[].obs;
  RxList<bool> selectedRows =
      <bool>[].obs; // Observable list to store selected rows

  @override
  void onInit() {
    super.onInit();
    fetchDummyData();
  }

  void fetchDummyData() {
    // Initialize Selected Rows
    selectedRows.assignAll(List.generate(36, (index) => false));
    dataList.addAll(
      List.generate(
        36,
        (index) => {
          'Column1': 'Data ${index + 1} - 1',
          'Column2': 'Data ${index + 1} - 2',
          'Column3': 'Data ${index + 1} - 3',
          'Column4': 'Data ${index + 1} - 4',
        },
      ),
    );
  }
}
