import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var dataList = <Map<String, dynamic>>[].obs;
  var filteredDataList = <Map<String, dynamic>>[].obs;

  // Observable list to store selected rows
  RxList<bool> selectedRows = <bool>[].obs;

  // Observable for tracking the index of the column for sorting
  RxInt sortColumnIndex = 1.obs;

  // Observable for tracking the sorting order (Ascending or Descending)
  RxBool sortAscending = true.obs;

  // Controller for handling search text input
  final searchTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchDummyData();
  }

  void searchQuery(String query) {
    filteredDataList.assignAll(dataList
        .where((item) => item['Column1']!.contains(query.toLowerCase())));
  }

  void sortById(int sortColumnIndex, bool ascending) {
    sortAscending.value = ascending;
    filteredDataList.sort((a, b) {
      if (ascending) {
        return filteredDataList[0]['Column1']
            .toString()
            .toLowerCase()
            .compareTo(filteredDataList[0]['Column1'].toString().toLowerCase());
      } else {
        return filteredDataList[0]['Column1']
            .toString()
            .toLowerCase()
            .compareTo(filteredDataList[0]['Column1'].toString().toLowerCase());
      }
    });
    this.sortColumnIndex.value = sortColumnIndex;
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

    filteredDataList.addAll(
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
