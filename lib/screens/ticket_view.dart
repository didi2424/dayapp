import 'package:dayapp/utils/app_layouts.dart';
import 'package:dayapp/utils/app_styles.dart';
import 'package:dayapp/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              //decoration BoxDecoration untuk merubah tampilan container
              decoration: BoxDecoration(
                  color: const Color(0xFF526799), borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      // const Spacer(), // memberikan jarak dari ujung ke ujung object
                      Expanded(child: Container()),
                      //ThickContainer(),

                      ThickContainer(),

                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("the width screen is ${constraints.constrainWidth()}"); //untuk menghitung jarak width container/ dan lainnya
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  // children: List.generate(
                                  //     (constraints.constrainWidth() / 6)
                                  //         .floor(), //menghitung jarak antara dua object oleh constrainWidth kemudian text digenerate sesuai jarak yang dihitung
                                  //     (index) => Text("-")),

                                  children: List.generate(
                                      (constraints.constrainWidth() / 6).floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(color: Colors.white),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),

                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "JKT",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white), //parameters copyWith pada style mememberikan grant untuk menganti warna
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
