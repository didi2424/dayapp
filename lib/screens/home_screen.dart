import 'package:dayapp/screens/ticket_view.dart';
import 'package:dayapp/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            //memberikan jarak antara content dengan batas maksimal horizontal

            child: Column(
              children: [
                const Gap(40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //memberikan jarak pada 2 atau lebih content
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, //merubah align pada text
                        children: [
                          Text("Good Morning", style: Styles.headLineStyle3,
                          ),
                          const Gap(5), // memberikan jarak antara content
                          Text("Dimas Kurniawan", style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50, width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/img1.png"))),
                      )
                    ]),
                const Gap(25),
                Container(
                  //pelajari dukumentasi untuk styling lebih advandce https://api.flutter.dev/flutter/widgets/Container-class.html
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 243, 243, 243)),
                  padding: 
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 12), //membuat container berubah ukuran susuai content dengan jarak yang ditentutkan
                  child: 
                  Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color.fromARGB(255, 255, 189, 65)),
                      Text("Search", style: Styles.headLineStyle4)
                          // style: TextStyle(color: Colors.black),
                         
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcomming Fights",style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: () {
                        print("You are tapped 1");
                      },
                      child: 
                        Text('viewall',style: Styles.headLineStyle3,),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(25),
          TicketView()
        ],
      ),
    );
  }
}
