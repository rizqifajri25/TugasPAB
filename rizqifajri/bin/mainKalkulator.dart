import 'dart:io';

import 'kalkulator.dart';

void main(){
  while(true){
    var kalkulator = Kalkulator();

    try{
      stdout.write('Input Bilangan ke 1 : ');
      double bil1 = double.parse(stdin.readLineSync()!);

      stdout.write('Input Bilangan ke 2 : ');
      double bil2 = double.parse(stdin.readLineSync()!);

      print('\n Kalkulator Biasa');
      print('1. Pertambahan (+)');
      print('2. Pengurangan (-)');
      print('3. Perkalian (*)');
      print('4. Pembagian (/)');

      stdout.write('Mau Ngapain Sekarang? (1/2/3/4) : ');
      String? pilih = stdin.readLineSync();

      double hasil;

      switch(pilih){
        case '1':
          hasil = kalkulator.pertambahan(bil1, bil2);
          print("Hasil Pertambahan dari $bil1 + $bil2 = $hasil");
          break;
        case '2':
          hasil = kalkulator.pengurangan(bil1, bil2);
          print("Hasil pengurangan dari $bil1 - $bil2 = $hasil");
          break;
        case '3':
          hasil = kalkulator.perkalian(bil1, bil2);
          print("Hasil Perkalian dari $bil1 * $bil2 = $hasil");
          break;
        case '4':
          hasil = kalkulator.pembagian(bil1, bil2);
          print("Hasil Pembagian dari $bil1 / $bil2 = $hasil");
          break;
      }
    }catch(e){
      print("Terjadi Error : $e");
    }

    stdout.write("Mau Ngulang Program Lagi Ga?(Y / T) : ");
    String? ulang = stdin.readLineSync();
    if(ulang == 't' || ulang == 'T'){
      print("Sampai Jumpa kembali!");
      break;
    }
  }


}