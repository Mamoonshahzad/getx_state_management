import '../utils/urls.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {
          'message': 'This is language translation example',
          'topic': 'Localization'
        },
        'ur_PK': {
          'message': 'یہ زبان کے ترجمہ کی مثال ہے۔',
          'topic': 'لوکلائزیشن'
        }
      };
}
