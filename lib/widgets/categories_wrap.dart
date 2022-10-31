part of 'widgets.dart';

class CategoriesWrap extends StatelessWidget {
  const CategoriesWrap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.center,
        spacing: 20,
        runSpacing: 38,
        children: [
          CategoryButton('Restaurants', 'assets/images/food-categories.png'),
          CategoryButton(
              'Supermarket', 'assets/images/supermarket-categories.png'),
          CategoryButton('Baby and Kids', 'assets/images/baby-categories.png'),
          CategoryButton(
              'Electronics', 'assets/images/electronic-categories.png'),
          CategoryButton('Books', 'assets/images/book-categories.png'),
          CategoryButton('Other', 'assets/images/other-categories.png'),
        ],
      ),
    );
  }
}
