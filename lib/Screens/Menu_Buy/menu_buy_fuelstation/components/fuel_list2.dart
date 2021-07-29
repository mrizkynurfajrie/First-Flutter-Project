// import 'package:flutter/material.dart';
// import 'package:dropdownfield/dropdownfield.dart';

// class FuelList2 extends StatefulWidget {
//   @override
//   _FuelList2State createState() => _FuelList2State();
// }

// class _FuelList2State extends State<FuelList2> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         DropDownField(
//           controller: _kapasitasLiter,
//           textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//           hintText: "Select the Capacity..",
//           items: kapasitasLiter,
//           enabled: true,
//           itemsVisibleInDropdown: 5,
//           onValueChanged: (value) {
//             setState(() {
//               selectedKapasitas = value;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }

// String selectedKapasitas = '';

// final TextEditingController _kapasitasLiter = TextEditingController();
// final TextEditingController _hargaBeli = TextEditingController();

// List<String> kapasitasLiter = [
//   "5.000 KL",
//   "10.000 KL",
//   "15.000 KL",
//   "20.000 KL",
// ];

// List<String> harga = [
//   "Rp 5.000.000",
//   "Rp 10.000.000",
//   "Rp 15.000.000",
//   "Rp 20.000.000",
// ];
