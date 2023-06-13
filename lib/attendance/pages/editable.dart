import 'package:dashclg/attendance/data/user.dart';
import 'package:dashclg/attendance/model/user.dart';
import 'package:dashclg/attendance/utils.dart';
import 'package:dashclg/attendance/widget/scrollable.dart';
import 'package:dashclg/attendance/widget/text%20dial.dart';
import 'package:flutter/material.dart';

class EditablePage extends StatefulWidget {
  @override
  _EditablePageState createState() => _EditablePageState();
}

class _EditablePageState extends State<EditablePage> {
  late List<User> users;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: buildDataTable()),

  );

  Widget buildDataTable() {
    final columns = ['SL NO','USN','Name','Attendance'];

    return DataTable(
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      final isAge = column == columns[2];

      return DataColumn(
        label: Text(column),
        numeric: isAge,
      );
    }).toList();
  }

  List<DataRow> getRows(List<User> users) => users.map((User user) {
    final cells = [user.SLNO,user.USN,user.Name, user.Attendance];

    return DataRow(
      cells: Utils.modelBuilder(cells, (index, cell) {
        final showEditIcon = index == 1 || index == 2||index == 3;

        return DataCell(
          Text('$cell'),
          showEditIcon: showEditIcon,
          onTap: () {
            switch (index) {
              case 1:
                USN(user);
                break;
              case 2:
                Name(user);
                break;
              case 3:
                Attendance(user);
                break;
            }
          },
        );
      }),
    );
  }).toList();
  Future USN(User editUser) async {
    final USN = await showTextDialog(
      context,
      title: 'Change USN',
      value: editUser.USN,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(USN: USN) : user;
    }).toList());
  }

  Future Name(User editUser) async {
    final firstName = await showTextDialog(
      context,
      title: 'Change Name',
      value: editUser.Name,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(Name: firstName) : user;
    }).toList());
  }

  Future Attendance(User editUser) async {
    final Attendance = await showTextDialog(
      context,
      title: 'Change the status',
      value: editUser.Attendance,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(Attendance: Attendance) : user;
    }).toList());
  }
}