import 'dart:async';

Future<String> fetchDataFromInternet(String param) async{
  String hasil;
  if(param == 'berhasil'){
    //mensimulasikan jeda 2 detik saat mengambil data berhasil
    await Future.delayed(Duration(seconds: 2));
    hasil = 'Data Berhasil Diambil dari internet';
  }else if(param == 'tidak berhasil'){
    //mensimulasikan jeda 2 detik sebelum gagal
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Gagal Mengambil data dari internet');
  }else{
    //melempar exception jika parameter tidak valid
    throw ArgumentError('Parameter tidak valid');
  }
  return hasil;
}

void main() async{
  try{
    print('Mengambil data dari internet...');
    final data1 = await fetchDataFromInternet('berhasil');
    print('Data 1 : $data1');

    final data2 = await fetchDataFromInternet('tidak berhasil');
    print('Data 2 : $data2');
  }catch(e){
    print('Terjadi kesalahan : $e');
  }
}