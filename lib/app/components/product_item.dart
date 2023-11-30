import 'package:ecommerce_app/config/theme/resources/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/models/product_model.dart';
import '../routes/app_pages.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PRODUCT_DETAILS, arguments: product),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(50),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7),
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
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
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
          ],
        ),
      ),
    );
  }
}
