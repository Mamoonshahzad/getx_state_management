import '../utils/urls.dart';

class ScreenOne extends StatelessWidget {
  final String name;
  const ScreenOne({super.key, this.name = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen One $name')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('This is Test Text')),
        ],
      ),
    );
  }
}
