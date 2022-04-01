part of 'BuildWidgetsImports.dart';

class BlogTile extends StatelessWidget {
  final ArticleModel model;

  BlogTile({@required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('>>>>>>>>>>${model.author}');
        return Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      blogUrl: model.url,
                      blogTitle: model.author,
                    )));
      },
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          color: Colors.white,
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  child: Image.network(
                    model.urlToImage,
                    errorBuilder: (context, error, stackTrace) => Image.network(
                      'https://www.nicepng.com/png/detail/373-3734776_404-banner-http-404.png',
                      height: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    model.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(model.description),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
