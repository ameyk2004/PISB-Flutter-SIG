import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medicine_finder_pisb/screens/medicine_details_page.dart';
import 'package:medicine_finder_pisb/services/api_service.dart';
import 'package:medicine_finder_pisb/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();

  var results = [];
  var filteredResults = [];
  TextEditingController searchController = TextEditingController();

  Future<void> getMedicines() async {
    results = await apiService.getMedicines();
    filteredResults = List.from(results);
    setState(() {});
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      filteredResults = List.from(results);
    } else {
      filteredResults = results.where((medicine) {
        String genericName = medicine["openfda"]["generic_name"]?[0] ?? "";
        return genericName.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    setState(() {});
  }

  @override
  void initState() {
    getMedicines();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'My Medicine App',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: CarouselSlider(
              items: [
                Container(
                  width: double.infinity,
                  child: Image(
                    image: NetworkImage(
                        "https://www.netmeds.com/images/cms/offers/1634305647_Mobile_Push-weeked-kareena.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Image(
                      image: NetworkImage(
                          "https://newspaperads.ads2publish.com/wp-content/uploads/2018/05/netmeds-com-india-ka-rakhe-khayaal-india-ki-pharmacy-ad-bombay-times-17-05-2018.png"),
                      fit: BoxFit.cover),
                ),
                Container(
                  width: double.infinity,
                  child: Image(
                      image: NetworkImage(
                          "https://newspaperads.ads2publish.com/wp-content/uploads/2019/01/netmeds-com-har-ghar-mein-mahi-har-ghar-mein-netmeds-ad-times-of-india-mumbai-22-01-2019.png"),
                      fit: BoxFit.cover),
                ),
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Available Medicines",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: searchController,
              onChanged: filterSearchResults,
              decoration: InputDecoration(
                hintText: "Search Medicines",
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor, width: 2),
    borderRadius: BorderRadius.circular(10),

    ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MedicineDetailsPage(product_data: filteredResults[index])));
                    },
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      color: primaryColor.withAlpha(80),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: NetworkImage(
                                      "https://img.freepik.com/premium-vector/vector-illustration-cute-medicine-bottle-with-blank-label_98402-167220.jpg?semt=ais_hybrid")),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (filteredResults[index]["openfda"]["generic_name"][0]).toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                    maxLines: 2,
                                    softWrap: true,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    (filteredResults[index]["openfda"]["product_type"]?[0] ?? "N/A").toString(),
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    (filteredResults[index]["openfda"]["substance_name"]?[0] ?? "N/A").toString(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: filteredResults.length,
            ),
          ),
        ],
      ),
    );
  }
}
