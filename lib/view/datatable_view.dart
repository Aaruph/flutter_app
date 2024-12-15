import 'package:flutter/material.dart';

Widget displayDatatable() {
  return SizedBox(
    height: 500,
    width: 400,
    child: DataTable(
      headingRowColor: WidgetStateColor.resolveWith(
        (states) => Colors.amber,
      ),
      border: TableBorder.all(color: Colors.black),
      columns: const [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Roll No')),
        DataColumn(
            label: Text(
                'Actions')), // Add actions column for edit and delete buttons
      ],
      rows: [
        DataRow(
          cells: [
            const DataCell(Center(child: Text('John'))),
            const DataCell(Center(child: Text('12'))),
            DataCell(
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the icons horizontally
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            const DataCell(Center(child: Text('Mary'))),
            const DataCell(Center(child: Text('11'))),
            DataCell(
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the icons horizontally
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class DatatableView extends StatefulWidget {
  const DatatableView({super.key});

  @override
  State<DatatableView> createState() => _DatatableViewState();
}

class _DatatableViewState extends State<DatatableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              displayDatatable(), // Calling the DataTable function here
            ],
          ),
        ),
      ),
    );
  }
}
