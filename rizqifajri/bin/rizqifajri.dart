import 'package:args/args.dart';

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show additional command output.',
    )
    ..addFlag('version', negatable: false, help: 'Print the tool version.');
}

void printUsage(ArgParser argParser) {
  print('Usage: dart rizqifajri.dart <flags> [arguments]');
  print(argParser.usage);
}

class DataValidationException implements Exception{
  final String message;

  DataValidationException(this.message);

  @override
  String toString(){
    return 'DataCalidationException: $message';
  }
}

void ValidateData(String data){
  if(data.isEmpty){
    throw DataValidationException('Data Tidak boleh Kosong');
  }
}

void main(List<String> arguments) {
  var data1 = "Contoh Data";
  var data2 = "";
  // final ArgParser argParser = buildParser();
  try {
    //Memanggil Fungsi dengan data yang berisi
    ValidateData(data1);
    //Mencetak data ke console jika valid
    print('Data Valid : $data1');
    //memanggil fungsi dengan data kosong
    ValidateData(data2);
    // final ArgResults results = argParser.parse(arguments);
    // bool verbose = false;
    //
    // // Process the parsed arguments.
    // if (results.flag('help')) {
    //   printUsage(argParser);
    //   return;
    // }
    // if (results.flag('version')) {
    //   print('rizqifajri version: $version');
    //   return;
    // }
    // if (results.flag('verbose')) {
    //   verbose = true;
    // }
    //
    // // Act on the arguments provided.
    // print('Positional arguments: ${results.rest}');
    // if (verbose) {
    //   print('[VERBOSE] All arguments: ${results.arguments}');
    // }
  } catch(e){
    //menangkap dan mencetak pesan kesalahan jika terjadi exception
    print(e.toString());
  }
}
