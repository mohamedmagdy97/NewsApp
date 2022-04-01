import 'package:flutter/material.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/BuildWidgetsImports.dart';

class CategoryNews extends StatefulWidget {
  final String category;

  CategoryNews({this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = [];

  bool _loading = true;

  @override
  void initState() {
    getCategoryNews();
    super.initState();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BuildBackBtn(),
        title: BuildAppNameText(title: widget.category),
      ),
      body: _loading
          ? BuildLoadingWidget()
          : Directionality(
              textDirection: TextDirection.rtl,
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
            ),
    );
  }
}
