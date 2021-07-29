import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/rounded_button_prodlist.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List kapasitas = ["5000 KL", "10.000 KL", "15.000 KL", "20.000 KL"];
  List harga = ["Rp 7.000", "Rp 14.900.000", "Rp 22.350.000", "Rp 29.500.000"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kapasitas.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          child: SvgPicture.asset("assets/icons/biodiesel.svg"),
                        ),
                        SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              kapasitas[index],
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              harga[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 75.00,
                          height: 60.00,
                          child: RoundedButtonProdList(
                            text: "Buy",
                            textColor: Colors.white,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
