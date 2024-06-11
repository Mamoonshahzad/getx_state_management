import "../utils/urls.dart";

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Localization')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          ListTile(
            title: Text('topic'.tr),
            subtitle: Text('message'.tr),
          ),
          SizedBox(height: Get.height * .02),
          Row(children: [
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('English')),
            SizedBox(width: Get.width * .04),
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'PK'));
                },
                child: const Text('Urdu'))
          ])
        ]),
      ),
    );
  }
}

//میرا نام مامون شہزاد ہے۔
