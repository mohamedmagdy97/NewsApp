part of 'BuildWidgetsImports.dart';

class BuildBodyNews extends StatelessWidget {
  const BuildBodyNews({
    Key key,
    @required this.categories,
    @required this.articles,
  }) : super(key: key);

  final List<CategoryModel> categories;
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          /// Categories
          Container(
            height: 70,
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTile(
                  categoryName: categories[index].categoryName,
                  imageUrl: categories[index].imageUrl,
                );
              },
            ),
          ),

          ///Blogs
          Expanded(
            child: Visibility(
              visible: articles.length != 0,
              child: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return BlogTile(model: articles[index]);
                    }),
              ),
              replacement: Center(
                  child: Text(
                'تحقق من إتصالك بالانترنت',
                style: TextStyle(color: Colors.black),
              )),
            ),
          )
        ],
      ),
    );
  }
}
