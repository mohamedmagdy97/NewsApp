part of 'BuildWidgetsImports.dart';

class BuildCustomLoading extends StatelessWidget {
  const BuildCustomLoading({
    Key key,
    @required this.loadingText,
  }) : super(key: key);

  final int loadingText;

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: loadingText == 100,
      child: Center(
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
              Text('Loading ${loadingText.toString()} %'),
            ],
          ),
        ),
      ),
    );
  }
}
