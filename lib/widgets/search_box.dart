part of 'widgets.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: edge),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xfff6f6f6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
