import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  TextEditingController dateController = TextEditingController();
  bool isDateSelected = false;
  int selectedValue = 1;

  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (dateSelected != null) {
      dateController.text = dateSelected.toString().substring(0, 10);
      isDateSelected = true;
    } else {
      if (!isDateSelected) {
        dateController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: 'Fecha de nacimiento',
              ),
              onTap: () {
                print('Aperturando el datepicker');
                //Nos desabilita el teclado propio del TextField y nos da la vista de fecha gracias a selectedDate():
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
            SizedBox(height: 20),
            DropdownButton(
              value: selectedValue,
              items: [
                DropdownMenuItem(
                  child: Text('Elemento 1'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Elemento 2'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Elemento 3'),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text('Elemento 4'),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Text('Elemento 5'),
                  value: 5,
                ),
              ],
              onChanged: (int? value) {
                selectedValue = value!;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
