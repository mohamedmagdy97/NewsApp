part of 'BuildWidgetsImports.dart';

class BuildLoadingWidget extends StatelessWidget {
  const BuildLoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(color: Colors.teal),
            const SizedBox(height: 16),
            Text('Loading ...'),
          ],
        ),
      ),
    );
  }
}
