part of 'BuildWidgetsImports.dart';

class BuildAppNameText extends StatelessWidget {
  final String title;

  const BuildAppNameText({this.title = ''});

  @override
  Widget build(BuildContext context) {
    print('>>>>>>>>>>>>>>>##$title&&');
    return Visibility(
      visible: title.isNotEmpty,
      replacement: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
