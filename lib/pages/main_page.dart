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
      floatingActionButton: NavbarButton(),
      body: Stack(
        children: [
          // main color background
          Container(
            color: mainColor,
          ),

          // white color background
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: whiteColor,
            ),
          ),

          // main page
          SafeArea(
            bottom: false,
            child: Stack(
              children: [
                // header
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

                // main page body
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      Container(
                        width: double.infinity,
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
                            CategoriesWrap(),
                            SizedBox(
                              height: 30,
                            ),

                            // search
                            SearchBox(),
                            SizedBox(
                              height: edge,
                            ),

                            // Data Locations Categories
                            Column(
                              children: mockLocations
                                  .map((e) => LocationCard(
                                        location: e,
                                      ))
                                  .toList(),
                            ),
                            SizedBox(height: 60)
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
