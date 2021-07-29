import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/rounded_button.dart';
import 'package:dropdownfield/dropdownfield.dart';

class BuyForm extends StatefulWidget {
  @override
  _BuyFormState createState() => _BuyFormState();
}

class _BuyFormState extends State<BuyForm> {
  final kapasitasController = TextEditingController();
  final hargaController = TextEditingController();
  final namaperusahaanController = TextEditingController();
  final namapicController = TextEditingController();
  final notelponController = TextEditingController();
  final signController = TextEditingController();
  final namadriverController = TextEditingController();
  final platpolisiController = TextEditingController();
  final nolambungController = TextEditingController();
  final kapasitaslambungController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    kapasitasController.dispose();
    hargaController.dispose();
    namaperusahaanController.dispose();
    namapicController.dispose();
    notelponController.dispose();
    signController.dispose();
    namadriverController.dispose();
    platpolisiController.dispose();
    nolambungController.dispose();
    kapasitaslambungController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Expanded(
          child: SizedBox(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.all(25),
              children: [
                buildKapasitas(),
                const SizedBox(height: 14),
                buildHarga(),
                const SizedBox(height: 14),
                buildNamaPerusahaan(),
                const SizedBox(height: 14),
                buildNamaPic(),
                const SizedBox(height: 14),
                buildNoTelpon(),
                const SizedBox(height: 14),
                buildSign(),
                const SizedBox(height: 14),
                buildNamaDriver(),
                const SizedBox(height: 14),
                buildPlatPolisi(),
                const SizedBox(height: 14),
                buildNoLambung(),
                const SizedBox(height: 14),
                buildKapasitasLambung(),
                const SizedBox(height: 14),
                RoundedButton(
                  text: 'Submit',
                  press: () {
                    print('Kapasitas: ${kapasitasController.text}');
                    print('Harga: ${hargaController.text}');
                    print('Nama Perusahaan: ${namaperusahaanController.text}');
                    print('Nama PIC: ${namapicController.text}');
                    print('No Telpon: ${notelponController.text}');
                    print('Sign: ${signController.text}');
                    print('Nama Driver: ${namadriverController.text}');
                    print('Plat Polisi: ${platpolisiController.text}');
                    print('No Lambung: ${nolambungController.text}');
                    print(
                        'Kapasitas Lambung: ${kapasitaslambungController.text}');
                  },
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildKapasitas() => TextField(
        controller: kapasitasController,
        decoration: InputDecoration(
          labelText: 'Kapasitas',
          suffixIcon: kapasitasController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => kapasitasController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildHarga() => TextField(
        controller: hargaController,
        decoration: InputDecoration(
          labelText: 'Harga',
          suffixIcon: hargaController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => hargaController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildNamaPerusahaan() => TextField(
        controller: namaperusahaanController,
        decoration: InputDecoration(
          labelText: 'Nama Perusahaan',
          suffixIcon: namaperusahaanController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => namaperusahaanController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildNamaPic() => TextField(
        controller: namapicController,
        decoration: InputDecoration(
          labelText: 'Nama PIC',
          suffixIcon: namapicController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => namapicController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildNoTelpon() => TextField(
        controller: notelponController,
        decoration: InputDecoration(
          labelText: 'No Telpon',
          suffixIcon: notelponController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => notelponController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildSign() => TextField(
        controller: signController,
        decoration: InputDecoration(
          labelText: 'Sign Digital',
          suffixIcon: signController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => signController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildNamaDriver() => TextField(
        controller: namadriverController,
        decoration: InputDecoration(
          labelText: 'Nama Driver',
          suffixIcon: namadriverController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => namadriverController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildPlatPolisi() => TextField(
        controller: platpolisiController,
        decoration: InputDecoration(
          labelText: 'Plat Polisi',
          suffixIcon: platpolisiController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => platpolisiController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildNoLambung() => TextField(
        controller: nolambungController,
        decoration: InputDecoration(
          labelText: 'No Lambung',
          suffixIcon: nolambungController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => nolambungController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );

  Widget buildKapasitasLambung() => TextField(
        controller: kapasitaslambungController,
        decoration: InputDecoration(
          labelText: 'Kapasitas Lambung',
          suffixIcon: kapasitaslambungController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => kapasitaslambungController.clear(),
                ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        // autofocus: true,
      );
}

class FuelList2 extends StatefulWidget {
  @override
  _FuelList2State createState() => _FuelList2State();
}

class _FuelList2State extends State<FuelList2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropDownField(
          controller: _kapasitasLiter,
          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          hintText: "Select the Capacity..",
          items: kapasitasLiter,
          enabled: true,
          itemsVisibleInDropdown: 5,
          onValueChanged: (value) {
            setState(() {
              selectedKapasitas = value;
            });
          },
        ),
      ],
    );
  }
}

String selectedKapasitas = '';

final TextEditingController _kapasitasLiter = TextEditingController();
// final TextEditingController _hargaBeli = TextEditingController();

List<String> kapasitasLiter = [
  "5.000 KL",
  "10.000 KL",
  "15.000 KL",
  "20.000 KL",
];

List<String> harga = [
  "Rp 5.000.000",
  "Rp 10.000.000",
  "Rp 15.000.000",
  "Rp 20.000.000",
];
