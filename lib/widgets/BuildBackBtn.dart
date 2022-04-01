part of 'BuildWidgetsImports.dart';

class BuildBackBtn extends StatelessWidget {
  const BuildBackBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
      onPressed: () => Navigator.pop(context),
    );
  }
}