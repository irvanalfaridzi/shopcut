part of 'widgets.dart';

class CategoriesItem extends StatefulWidget {
  final String namaCategories;
  final String urlImages;

  CategoriesItem(
    this.namaCategories,
    this.urlImages,
  );

  @override
  _CategoriesItemState createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isClicked) {
          setState(() {
            _isClicked = false;
          });
        } else {
          setState(() {
            _isClicked = true;
          });
        }
      },
      child: Container(
        width: 100,
        height: 100,
        // color: greyColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _isClicked ? whiteColor : greyColor,
                        width: _isClicked ? 0 : 1,
                      ),
                      color: _isClicked
                          ? mainColor.withOpacity(0.15)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        widget.urlImages,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ),
                _isClicked
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 18),
                          child: Image.asset(
                            'assets/images/checked.png',
                            width: 18,
                            height: 18,
                            // alignment: Alignment.topRight,
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              widget.namaCategories,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: blackColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
