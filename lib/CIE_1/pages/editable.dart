import 'package:dashclg/CIE_1/model/user.dart';
import 'package:dashclg/CIE_1/data/user_data.dart';
import 'package:flutter/material.dart';
import 'package:dashclg/CIE_1/utils.dart';
import '../widgets/text_dial.dart';
//import 'package:dashclg/cie_pages/widgets/tab_bar.dart';

class EditablePages extends StatefulWidget {
  @override
  _EditablePagesState createState() => _EditablePagesState();
}

class _EditablePagesState extends State<EditablePages> {
  late List<Users> users;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers as Iterable<Users>);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: buildDataTable()),

  );

  Widget buildDataTable() {
    final columns = ['USN','MAT','DS','CO','ADE','Java'];

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

  List<DataRow> getRows(List<Users> users) => users.map((Users user) {
    final cells = [user.USN,user.MAT, user.DS,user.CO,user.ADE,user.Java];

    return DataRow(
      cells: Utils.modelBuilder(cells, (index, cell) {
        final showEditIcon = index == 1 || index == 2||index == 3 ||index==4 ||index==5 ||index==6;

        return DataCell(
          Text('$cell'),
          showEditIcon: showEditIcon,
          onTap: () {
            switch (index) {

              case 1:
                MAT(user);
                break;
              case 2:
                DS(user);
                break;
              case 3:
                CO(user);
                break;
              case 4:
                ADE(user);
                break;
              case 5:
                Java(user);
                break;
            }
          },
        );
      }),
    );
  }).toList();
  /*Future USN(Users editUser) async {
    final USN = await showTextDialog(
      context,
      title: 'Change USN',
      value: editUser.USN,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(USN: USN) : user;
    }).toList());
  }*/

  Future MAT(Users editUser) async {
    final firstMat = await showTextDialog(
      context,
      title: 'Change MAT score',
      value: editUser.MAT,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(MAT: firstMat) : user;
    }).toList());
  }

  Future DS(Users editUser) async {
    final DS = await showTextDialog(
      context,
      title: 'Change DS score',
      value: editUser.DS,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(DS: DS) : user;
    }).toList());
  }

  Future CO(Users editUser) async {
    final CO = await showTextDialog(
      context,
      title: 'Change CO score',
      value: editUser.CO,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(CO: CO) : user;
    }).toList());
  }


  Future ADE(Users editUser) async {
    final ADE = await showTextDialog(
      context,
      title: 'Change ADE score',
      value: editUser.ADE,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(ADE: ADE) : user;
    }).toList());
  }


  Future Java(Users editUser) async {
    final Java = await showTextDialog(
      context,
      title: 'Change Java score',
      value: editUser.Java,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(Java: Java) : user;
    }).toList());
  }
}