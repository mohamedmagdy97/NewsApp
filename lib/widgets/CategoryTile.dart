part of 'BuildWidgetsImports.dart';

class CategoryTile extends StatelessWidget {
  final String imageUrl, categoryName;

  const CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryNews(
                    category: categoryName.toLowerCase(),
                  ))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: buildBorderRadius(),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: buildBorderRadius(),
                color: Colors.black26,
              ),
              alignment: Alignment.center,
              width: 120,
              height: 60,
              child: Text(
                categoryName,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  BorderRadius buildBorderRadius() {
    return const BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      topRight: Radius.circular(25),
      bottomLeft: Radius.circular(25),
    );
  }
}
