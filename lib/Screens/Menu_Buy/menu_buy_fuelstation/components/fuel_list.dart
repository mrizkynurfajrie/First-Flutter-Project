import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/dropdown_formfield.dart';

class FuelList extends StatefulWidget {
  @override
  _FuelListState createState() => _FuelListState();
}

class _FuelListState extends State<FuelList> {
  String _pilihanKapasitas;
  String _kapasitasBeli;
  String _hargaBeli;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _pilihanKapasitas = '';
    _kapasitasBeli = '';
    _hargaBeli = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _kapasitasBeli = _pilihanKapasitas;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: DropDownFormField(
                titleText: 'Gas List',
                hintText: 'Please choose one',
                value: _pilihanKapasitas,
                onSaved: (value) {
                  setState(() {
                    _pilihanKapasitas = value;
                    _hargaBeli = value;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    _pilihanKapasitas = value;
                  });
                },
                dataSource: [
                  {
                    "display": "5000 KL",
                    "value": "5000 KL",
                    "value2": "Rp 5.000.000",
                  },
                  {
                    "display": "Climbing",
                    "value": "Climbing",
                  },
                  {
                    "display": "Walking",
                    "value": "Walking",
                  },
                  {
                    "display": "Swimming",
                    "value": "Swimming",
                  },
                  {
                    "display": "Soccer Practice",
                    "value": "Soccer Practice",
                  },
                  {
                    "display": "Baseball Practice",
                    "value": "Baseball Practice",
                  },
                  {
                    "display": "Football Practice",
                    "value": "Football Practice",
                  },
                ],
                textField: 'display',
                valueField: 'value',
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: TextButton(
                child: Text('Save'),
                onPressed: _saveForm,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(_kapasitasBeli + _hargaBeli),
            )
          ],
        ),
      ),
    );
  }
}
