import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapsell_web/features/dashboard/controller/dashboard_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class DashboardScreenDesktopTablet extends StatelessWidget {
  const DashboardScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Obx(
            () {
              return PaginatedDataTable2(
                minWidth: 786,
                rowsPerPage: 10,
                columnSpacing: 12,
                dataRowHeight: 56,
                dividerThickness: 0,
                horizontalMargin: 12,
                headingTextStyle: Theme.of(context).textTheme.titleMedium,
                headingRowColor: WidgetStateProperty.resolveWith(
                    (states) => TColors.primaryBackground),
                headingRowDecoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(TSizes.borderRadiusMd),
                    topRight: Radius.circular(TSizes.borderRadiusMd),
                  ),
                ),

                /// Check Box Column
                showCheckboxColumn: true,

                /// PAGINATION
                showFirstLastButtons: true,
                onPageChanged: (value) {},
                renderEmptyRowsInTheEnd: false,
                onRowsPerPageChanged: (noOfRows) {},

                columns: const [
                  DataColumn2(label: Text('Column 1')),
                  DataColumn2(label: Text('Column 2')),
                  DataColumn2(label: Text('Column 3')),
                  DataColumn2(label: Text('Column 4')),
                ],
                source: MyData(),
              );
            },
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
    final data = controller.dataList[index];
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
  int get rowCount => controller.dataList.length;

  @override
  int get selectedRowCount => 0;
}
