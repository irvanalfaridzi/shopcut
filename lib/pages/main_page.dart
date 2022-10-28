part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 245,
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              blurRadius: 17,
              color: blackColor.withOpacity(0.3),
              offset: Offset(0, 0),
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: mainColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: greyColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // background
          Container(
            color: mainColor,
          ),
          // top main page
          SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/bike.png',
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 150,
                    alignment: Alignment.topRight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: edge,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Queen',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'What shop do\nyou need?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
                // body main page
                Container(
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 150,
                        ),
                        padding: EdgeInsets.all(edge),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Location
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/Icon-Map.png',
                                        width: 35,
                                        height: 35,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Adi Sucipto No. 437, Manahan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: blackColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            'Change location',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: greyColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: blackColor,
                                  size: 15,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            // Our Categories
                            Row(
                              children: [
                                Text(
                                  'Our ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor,
                                  ),
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              '7 categories available',
                              style: TextStyle(
                                color: greyColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                runAlignment: WrapAlignment.center,
                                spacing: 20,
                                runSpacing: 38,
                                children: [
                                  CategoriesItem('Restaurants',
                                      'assets/images/food-categories.png'),
                                  CategoriesItem('Supermarket',
                                      'assets/images/supermarket-categories.png'),
                                  CategoriesItem('Baby and Kids',
                                      'assets/images/baby-categories.png'),
                                  CategoriesItem('Electronics',
                                      'assets/images/electronic-categories.png'),
                                  CategoriesItem('Books',
                                      'assets/images/book-categories.png'),
                                  CategoriesItem('Other',
                                      'assets/images/other-categories.png'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            // search
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xfff6f6f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Search electronics Store',
                                    style: TextStyle(
                                      color: greyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.search,
                                    color: greyColor,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: edge,
                            ),
                            // Data Locations Categories
                            Column(
                              children: mockLocations
                                  .map((e) => CardLocations(
                                        location: e,
                                      ))
                                  .toList(),
                            ),
                            SizedBox(height: 80)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
