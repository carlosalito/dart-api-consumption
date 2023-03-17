import 'package:api_consumption/api_consumption.dart' as api_consumption;

Future<void> main(List<String> arguments) async {
  print('Consultando api...');
  await api_consumption.main();
}
