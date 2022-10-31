part of 'widgets.dart';

class LocationSet extends StatelessWidget {
  const LocationSet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
