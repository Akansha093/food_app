import 'package:ecommerce_app/app/data/models/product_model.dart';
import 'package:ecommerce_app/app/routes/app_pages.dart';
import 'package:ecommerce_app/config/theme/resources/color_constant.dart';
import 'package:ecommerce_app/config/theme/resources/size_utils.dart';
import 'package:ecommerce_app/config/theme/resources/textfont_constants.dart';
import 'package:ecommerce_app/utils/dummy_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  List<ProductModel> searchResult = [];

  @override
  void initState() {
    super.initState();
  }

  void _filterProducts(String query) {
    setState(() {
      searchResult = DummyHelper.products
          .where((product) =>
              product.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    List<Map> examList = [
      {
        'title': 'Burger',
      },
      {
        'title': 'Chicken',
      },
      {
        'title': 'Fries',
      },
      {
        'title': 'Beverages',
      },
      {
        'title': 'Sides',
      },
      {
        'title': 'Desserts',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WHITE_COLOR,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: themeColor,
              size: 20,
            )),
        title: Container(
            height: 40,
            decoration: BoxDecoration(
                // color: textFieldClr,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: const BorderRadius.all(
                  Radius.circular(7),
                )),
            width: width / 1.10,
            child: TextFormField(
              autofocus: false,
              controller: _searchController,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: BLACK_COLOR,
                ),
                suffixIcon: Icon(
                  Icons.mic_outlined,
                  size: 25,
                  color: appHeadingDark,
                ),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(128, 128, 128, 1)),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              onChanged: (value) {
                if (_searchController.text.length > 2) {
                  _filterProducts(_searchController.text);
                } else if (_searchController.text == '') {
                  setState(() {
                    searchResult.clear();
                  });
                } else {
                  debugPrint('Please Write Text');
                }
              },
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: width! / 30, vertical: height / 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
                visible: _searchController.text == '',
                child: Text("Search Recommendations",
                    style: theme.textTheme.bodyMedium)),
            10.verticalSpace,
            Visibility(
              visible: _searchController.text == '',
              child: GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8),
                itemCount: examList.length,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 221, 248, 233),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(examList[i]['title'],
                            style: TextStyleConstants.Text13Green),
                      ));
                },
              ),
            ),
            10.verticalSpace,
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: searchResult.length,
              itemBuilder: (context, index) {
                ProductModel product = searchResult[index];
                return GestureDetector(
                  onTap: () =>
                      Get.toNamed(Routes.PRODUCT_DETAILS, arguments: product),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width / 90,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              Container(
                                height: 300,
                                padding:
                                    const EdgeInsets.all(8), // Border width
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        50), // Image radius
                                    child: Image.asset(product.image!,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  10.verticalSpace,
                                  Text(product.name!,
                                      style: theme.textTheme.bodyMedium),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(product.reviews!,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall),
                                  10.verticalSpace,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "₹ ${product.price!.toString()}",
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      SizedBox(width: width / 8),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        child: InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                            Icons.remove,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text("0"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(Routes.PRODUCT_DETAILS,
                                              arguments: product);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              // cartController.addToCart(product);
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: width / 30,
                          ),
                          child: Divider(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                // ListTile(
                //   title: Text(product.name ?? ""),
                //   // Add more details or customize the list item as needed
                // );
              },
            ),
          ],
        ),
      )),
    );
  }
}
