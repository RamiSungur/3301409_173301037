import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/components/travel_choise.dart';
import 'package:travel_app/constants/string_constant.dart';
import 'package:travel_app/extensions/context_extension.dart';
import 'package:travel_app/models/travel.dart';
import 'package:travel_app/pages/travel_details/travel_details.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    List<Place> placeList = [
      Place(
        name: 'Azerbeycan',
        details: 'Azerbeycan hakkında detaylar...',
        image: 'assets/place/place_azerbeycan.jpg',
      ),
      Place(
        name: 'Hollanda',
        details: 'Hollanda hakkında detaylar...',
        image: 'assets/place/place_hollanda.jpg',
      ),
      Place(
        name: 'Maldivler',
        details: 'Maldivler hakkında detaylar...',
        image: 'assets/place/place_maldivler.jpg',
      ),
      Place(
        name: 'Azerbeycan',
        details: 'Azerbeycan hakkında detaylar...',
        image: 'assets/place/place_azerbeycan.jpg',
      ),
      Place(
        name: 'Hollanda',
        details: 'Hollanda hakkında detaylar...',
        image: 'assets/place/place_hollanda.jpg',
      ),
      Place(
        name: 'Maldivler',
        details: 'Maldivler hakkında detaylar...',
        image: 'assets/place/place_maldivler.jpg',
      )
    ];
    var text = Text(
      'Tercih Ettiğiniz Seyahat Şekli',
      style: TextStyle(
        fontSize: 5.w,
        fontWeight: FontWeight.w600,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          TravelString.homepageTitle,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
            child: SizedBox(
              height: 12.w,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.w),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Her gün bir ülke',
                  hintStyle: const TextStyle(height: 1),
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
            child: text,
          ),
          SizedBox(
            height: 20.w,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: const TravelChoiseCard(
                    icon: Icon(Icons.card_travel),
                  ),
                ),
                const TravelChoiseCard(
                  icon: Icon(Icons.bus_alert),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: const TravelChoiseCard(
                    icon: Icon(Icons.train),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 75.w,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: PageController(
                viewportFraction: 0.95,
                initialPage: 0,
              ),
              itemCount: placeList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.routeTo(
                    TravelDetails(
                      place: placeList[index],
                    ),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.w),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.w),
                        image: DecorationImage(
                          image: AssetImage(placeList[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
