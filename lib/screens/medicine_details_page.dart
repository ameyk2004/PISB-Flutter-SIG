import 'package:flutter/material.dart';
import 'package:medicine_finder_pisb/utils/colors.dart';

class MedicineDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product_data;

  const MedicineDetailsPage({super.key, required this.product_data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            if (product_data["openfda"]["generic_name"] != null)
              _buildSectionTitle("Generic Name"),
            if (product_data["openfda"]["generic_name"] != null)
              _buildSectionContent(
                  product_data["openfda"]["generic_name"]?.join(", ")),

            if (product_data["purpose"] != null)
              _buildSectionTitle("Purpose"),
            if (product_data["purpose"] != null)
              _buildSectionContent(product_data["purpose"]?[0]),

            if (product_data["warnings"] != null)
              _buildSectionTitle("Warnings"),
            if (product_data["warnings"] != null)
              _buildSectionContent(product_data["warnings"]?[0]),

            if (product_data["storage_and_handling"] != null)
              _buildSectionTitle("Storage and Handling"),
            if (product_data["storage_and_handling"] != null)
              _buildSectionContent(
                  product_data["storage_and_handling"]?[0]),

            if (product_data["openfda"]["manufacturer_name"] != null)
              _buildSectionTitle("Manufacturer"),
            if (product_data["openfda"]["manufacturer_name"] != null)
              _buildSectionContent(
                  product_data["openfda"]["manufacturer_name"]?[0]),

            if (product_data["active_ingredient"] != null)
              _buildSectionTitle("Active Ingredients"),
            if (product_data["active_ingredient"] != null)
              _buildSectionContent(
                  product_data["active_ingredient"]?.join(", ")),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
      ),
    );
  }

  // Helper Widget to Create Section Content
  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0,  horizontal: 10),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}
