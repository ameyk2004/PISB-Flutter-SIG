import 'package:flutter/material.dart';
import 'package:medicine_finder_pisb/utils/colors.dart';

class MedicineDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product_data;
  const MedicineDetailsPage({super.key, required this.product_data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(170),
                        bottomLeft: Radius.circular(170)),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.itm.ac.in/2024/05/medical-lab-technology-mlt-a-link-between-science-and-society.webp"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          print("Clicked");
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            product_data["openfda"]["generic_name"][0],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text(
              "Warnings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product_data["warnings"][0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}
