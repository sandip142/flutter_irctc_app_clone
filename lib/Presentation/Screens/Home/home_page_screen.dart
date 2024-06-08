import 'package:flutter/material.dart';
import 'package:flutter_irctc_clone_app/AppUtils/app_utils.dart';
import 'package:flutter_irctc_clone_app/Presentation/Widgets/bottom_navigatoin_bar.dart';
import 'package:flutter_irctc_clone_app/Presentation/Widgets/other_service_card.dart';
import 'package:flutter_irctc_clone_app/Presentation/Widgets/search_train%20copy.dart';
import 'package:flutter_irctc_clone_app/Presentation/Widgets/train_service_card.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      // body
      body: Stack(
        children: [
          Container(
            color: Color(0xFF010101),
            child: Image.asset("assets/image/home_bg.png",
                fit: BoxFit.cover, width: double.maxFinite),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: setWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: setHeight(AppBar().preferredSize.height + 30)),
                  Padding(
                    padding: EdgeInsets.only(left: setWidth(21)),
                    child: Text(
                      "Train services",
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontWeight: FontWeight.w500,
                        fontSize: setHeight(21),
                        letterSpacing: 0,
                      ),
                    ),
                  ),

                  // grid
                  SizedBox(height: setHeight(14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchTrainScreen()));
                        },
                        child: TrainServiceCardWidget(
                          imgPath: "assets/image/train.png",
                          imgColor: Color(0xFF3C87F6),
                          title: "Train",
                          description: "Book your next train",
                          cardColor: Color(0xFF2475EE),
                        ),
                      ),
                      SizedBox(width: setWidth(14)),
                      TrainServiceCardWidget(
                        imgPath: "assets/image/food.png",
                        imgColor: Color(0xFF292A2F),
                        title: "Food",
                        description: "Food delivery at your seat",
                        cardColor: Color(0xFF1D1F24),
                      ),
                    ],
                  ),
                  SizedBox(height: setHeight(14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TrainServiceCardWidget(
                        imgPath: "assets/image/ask_disha.png",
                        imgColor: Color(0xFF292A2F),
                        title: "Ask Disha",
                        description: "Virtual assistant",
                        cardColor: Color(0xFF1D1F24),
                      ),
                      SizedBox(width: setWidth(14)),
                      TrainServiceCardWidget(
                        imgPath: "assets/image/rooms.png",
                        imgColor: Color(0xFF292A2F),
                        title: "Rooms",
                        description: "Book rooms at stations",
                        cardColor: Color(0xFF1D1F24),
                      ),
                    ],
                  ),

                  // other services
                  SizedBox(height: setHeight(50)),
                  Padding(
                    padding: EdgeInsets.only(left: setWidth(21)),
                    child: Text(
                      "Other services",
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontWeight: FontWeight.w500,
                        fontSize: setHeight(21),
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: setHeight(14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtherServiceCardWidget(
                          title: "Flight",
                          description: "Book your next flight"),
                      SizedBox(width: setWidth(14)),
                      OtherServiceCardWidget(
                          title: "Hotel", description: "Book your next stay"),
                    ],
                  ),
                  SizedBox(height: setHeight(14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtherServiceCardWidget(
                          title: "Bus", description: "Book your next bus"),
                      SizedBox(width: setWidth(14)),
                      OtherServiceCardWidget(
                          title: "Tourism",
                          description: "Explore tour options"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
