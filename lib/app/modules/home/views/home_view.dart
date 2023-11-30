// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:ecommerce_app/app/modules/search/views/search_view.dart';
import 'package:ecommerce_app/config/theme/resources/color_constant.dart';
import 'package:ecommerce_app/config/theme/resources/textfont_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../../config/theme/resources/size_utils.dart';
import '../../../../utils/constants.dart';
import '../../../components/product_item.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.grey[200],
                  width: double.infinity,
                  child: Image.asset(
                    Constants.product7,
                    // opacity: const AlwaysStoppedAnimation(.5),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Center(child: Icon(Icons.error_rounded)),
                  ),
                ),
                Positioned(
                    top: 35,
                    left: 10,
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)),
                        child: const Center(
                            child: Icon(
                          color: BLACK_COLOR,
                          Icons.arrow_back_ios,
                          size: 18,
                        )))),
                Positioned(
                    top: 35,
                    right: 60,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()),
                        );
                      },
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9)),
                          child: const Center(
                              child: Icon(
                            color: BLACK_COLOR,
                            Icons.search,
                            size: 20,
                          ))),
                    )),
                Positioned(
                    top: 35,
                    right: 10,
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)),
                        child: const Center(
                            child: Icon(
                          color: BLACK_COLOR,
                          Icons.share,
                          size: 20,
                        )))),
              ],
            ),
            20.verticalSpace,
            upper(context),
            listtab(controller),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}

Widget upper(context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: width / 30, vertical: height / 90),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amerika Foods",
                  style: TextStyleConstants.TextBlackColor19,
                ),
                Text(
                  "American, Fast Food, Burgers",
                  style: TextStyleConstants.appSmallHeadingText13,
                )
              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Icon(
                Icons.favorite_outline,
                color: BLACK_COLOR,
                size: 18,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              Text(
                " 4.5 ",
                style: TextStyleConstants.TextWhiteColor12,
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Icon(
                Icons.chat_rounded,
                size: 15,
                color: Colors.green,
              ),
              Text(
                " 1k+ reviews ",
                style: TextStyleConstants.TextWhiteColor12,
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Icon(
                Icons.lock_clock,
                size: 15,
                color: Colors.blue,
              ),
              Text(
                " 15 in",
                style: TextStyleConstants.TextWhiteColor12,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey.shade400,
          thickness: 0.5,
        ),
      ],
    ),
  );
}

Widget listtab(HomeController controller) {
  return SizedBox(
    height: height / 1,
    child: Column(
      children: [
        SizedBox(
          height: 30.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: controller.tabs.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                controller.selectedIndex = index;
                controller.update();
              },
              child: Container(
                height: 50.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: index == controller.selectedIndex
                      ? Color.fromARGB(255, 221, 248, 233)
                      : const Color.fromARGB(0, 0, 0, 0),
                ),
                child: Center(
                  child: Text(
                    controller.tabs[index],
                    style: TextStyle(
                      color: index == controller.selectedIndex
                          ? Color.fromARGB(255, 63, 29, 29)
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.grey.shade400,
          thickness: 0.5,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: width / 30, vertical: height / 90),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.products.length,
              itemBuilder: (context, index) => ProductItem(
                product: controller.products[index],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
