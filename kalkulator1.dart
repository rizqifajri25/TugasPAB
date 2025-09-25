import 'dart:io';

void main(){
  while(true){
    stdout.write('Masukkan Bilangan 1: ');
    double angka1 = double.parse(stdin.readLineSync()!);

    stdout.write('Masukkan Bilangan 2: ');
    double angka2 = double.parse(stdin.readLineSync()!);

    print('\n Kalkulator Biasa ');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');
    stdout.write('Pilih 1-4: ');
    String? pilihan = stdin.readLineSync();

    double hasil;

    switch(pilihan){
      case '1':
        hasil = angka1 + angka2;
        print('Hasil Penjumlahan dari $angka1 + $angka2 = $hasil');
        break;
      case '2':
        hasil = angka1 - angka2;
        print('Hasil Pengurangan dari $angka1 - $angka2 = $hasil');
        break;
      case '3':
        hasil = angka1 * angka2;
        print('Hasil Perkalian dari $angka1 * $angka2 = $hasil');
        break;
      case '4':
        hasil = angka1 / angka2;
        if(angka2 == 0){
          print('Angka Pembagian tidak boleh ada nol');
        }else{
          hasil = angka1 / angka2;
          print('Hasil Pembagian dari $angka1 / $angka2 = $hasil');
        }break;
      default:
        print('Pilihan kamu gaada nih, coba pilih yang benar');
    }
    stdout.write('Apakah Anda Masih Ingin Menggunakan Kalkulator?(Y/T) : ');
    String ? ulang = stdin.readLineSync();
    if(ulang == 't' || ulang == 'T'){
      print('Sampai Jumpa Kembali...');
      break;
    }

  }

}