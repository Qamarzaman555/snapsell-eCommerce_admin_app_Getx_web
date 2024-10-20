import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:snapsell_web/features/dashboard/controller/dashboard_controller.dart';

import '../../../../common/widgets/data_table/paginated_data_table.dart';
import '../../../../utils/constants/sizes.dart';

class DashboardScreenDesktopTablet extends StatelessWidget {
  const DashboardScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final DashBoardController controller = Get.put(DashBoardController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  controller: controller.searchTextController,
                  onChanged: (query) => controller.searchQuery(query),
                  decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Iconsax.search_normal)),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                Obx(
                  () {
                    // Order & Selected Rows are Hidden => Just to update the UI => Obx => [ProductsRows]
                    Visibility(
                      visible: false,
                      child:
                          Text(controller.filteredDataList.length.toString()),
                    );

                    return TPaginatedDataTable(
                      /// SORTING
                      sortAscending: controller.sortAscending.value,

                      sortColumnIndex: controller.sortColumnIndex.value,

                      columns: [
                        const DataColumn2(label: Text('Column 1')),
                        DataColumn2(
                            label: const Text('Column 2'),
                            onSort: (columnIndex, ascending) =>
                                controller.sortById(columnIndex, ascending)),
                        const DataColumn2(label: Text('Column 3')),
                        DataColumn2(
                            label: const Text('Column 4'),
                            onSort: (columnIndex, ascending) =>
                                controller.sortById(columnIndex, ascending)),
                      ],
                      source: MyData(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  final DashBoardController controller = Get.put(DashBoardController());
  @override
  DataRow? getRow(int index) {
    final data = controller.filteredDataList[index];
    return DataRow2(
      onTap: () {
        log('Row ${index + 1} is Clicked');
      },
      selected: controller.selectedRows[index],
      onSelectChanged: (value) =>
          controller.selectedRows[index] = value ?? false,
      cells: [
        DataCell(Text(data['Column1'] ?? '')),
        DataCell(Text(data['Column2'] ?? '')),
        DataCell(Text(data['Column3'] ?? '')),
        DataCell(Text(data['Column4'] ?? '')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => controller.filteredDataList.length;

  @override
  int get selectedRowCount => 0;
}
