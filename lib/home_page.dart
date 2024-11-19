import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medicine_finder_pisb/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Available Medicines",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: primaryColor.withAlpha(80),
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
                        SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Medicine Name", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),),
                              SizedBox(height: 10,),
                              Text("Detail 1 for Medicine"),
                              Text("Detail 1 for Medicine"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
