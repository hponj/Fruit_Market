import 'dart:io';
import 'package:fruit/fruit.dart' as fruit;
import 'variable.dart';

void main(List<String> arguments) {

  // Map hargabuah = {
  //   'mangga': 3000,
  //   'jeruk': 2000,
  //   'appel': 3500,
  //   'durian': 30000,
  //   'anggur': 7000,
  //   'naga': 70000,
  // };

  print('''$massage
   Buah yang tersedia di sini: 
   1.${buah[0]}
   2.${buah[1]}
   3.${buah[2]}
   4.${buah[3]}
   5.${buah[4]}
   6.${buah[5]}
   
   silahkan beli buah yang ingin anda beli!
  ''');

  var inputbuah = int.parse(stdin.readLineSync()!); //hitungan//

  // if (inputbuah == "mangga") {
  //   print("pesanan: $mangga2, harga: $mangga");
  // } else if (inputbuah == "jeruk") {
  //   print("pesanan: $jeruk2, harga: $jeruk");
  // } else if (inputbuah == "apple") {
  //   print("pesanan: $apple2, harga: $apple");
  // } else if (inputbuah == "durian") {
  //   print("pesanan: $durian2, harga: $durian");
  // } else if (inputbuah == "anggur") {
  //   print("pesanan: $anggur2, harga: $anggur");
  // } else if (inputbuah == "naga") {
  //   print("pesanan: $naga2, harga: $naga");
  // } else {
  //   print("Maaf, pesanan tidak tersedia");
  // };

  if (inputbuah > 0) {
    var BuahYangDipilih = buah[inputbuah - 1];
    // var hargaTotal = jumlah * hargabuah[inputbuah - 1];

    print('''
    anda memilih buah $BuahYangDipilih 

    berapa buah $BuahYangDipilih yang ingin anda beli:
    ''');

    var jumlah = int.parse(stdin.readLineSync()!);
    var total = harga[inputbuah - 1] * jumlah;

    stdout.write(
        '''Anda memilih buah $BuahYangDipilih sebanyak $jumlah maka totalnya adalah: $total
          Masukan nominal uang anda
        ''');
    var Uang = int.parse(stdin.readLineSync()!);
    var totaluang = Uang - total;

    if (Uang < total) {
      print("maaf uang anda kurang");
    } else {
      print('''
      Uang anda : $Uang
      harga total : $total
      kembalian : $totaluang

      Terimakasih telah membeli
    
    ''');
    }
    ;
  } else {
    stdout.write("Tuliskan nomor buah!!!!!");
  }
}
