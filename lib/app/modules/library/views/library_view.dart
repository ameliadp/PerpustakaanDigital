import '../../home/data/data.dart';
import '../widgets/category_item.dart';
import '../../utils/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../home/widgets/widgets.dart';
import '../controllers/library_controller.dart';

class LibraryView extends GetView<LibraryController> {
  const LibraryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorPrimary,
            size: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: SizedBox(
                height: 35.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: GetBuilder<LibraryController>(
                    builder: (controller) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: controller.categories.length,
                      itemBuilder: (context, index) {
                        final CategoryModel category =
                            controller.categories[index];
                        return CategoryItem(
                          category: category,
                          isActive: controller.selectedCategory?.categoryId ==
                              category.categoryId,
                          onPress: () {
                            controller.onSelectCategory(category);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: GetBuilder<LibraryController>(
                builder: (controller) => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 27.0,
                    mainAxisSpacing: 12.0,
                    childAspectRatio: 0.6, // Adjust the aspect ratio as needed
                  ),
                  itemCount: controller.books.length,
                  itemBuilder: (context, index) {
                    final BookModel book = controller.books[index];
                    return BookItem(
                      book: book,
                      onPress: () {
                        controller.gotoDetailBook(book.bookId);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
