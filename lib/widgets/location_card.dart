part of 'widgets.dart';

class LocationCard extends StatelessWidget {
  final Location location;

  LocationCard({
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationPage(
              location: location,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            // gambar card
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(location.urlImage),
                ),
              ),
            ),
            SizedBox(
              width: edge,
            ),

            // isi card
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${location.name}',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    location.promo
                        ? Image.asset(
                            'assets/images/promo-icon.png',
                            width: 18,
                            height: 18,
                          )
                        : SizedBox()
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/star-yellow.png',
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${location.rate}',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '•',
                      style: TextStyle(
                        color: greyColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${location.note}',
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 140,
                  child: Image.asset(
                    'assets/images/line-product.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/location-icon.png',
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '<${location.distance} km',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${location.closedTime}',
                      style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
