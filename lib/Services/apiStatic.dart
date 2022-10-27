import 'package:kaos/Model/kaos.dart';
import 'package:kaos/Model/kaos.dart';

class ApiStatic {
  static Future<List<Kaos>> getKaos() async {
    List<Kaos> kaos = [];
    for (var i = 0; i < 10; i++) {
      kaos.add(Kaos(
          idPenjual: i,
          nama: "Nama Pakaian" + i.toString(),
          nik: "Erigo T-Shirt Oversize Antelope Black" + i.toString(),
          alamat: "T-Shirt HD Oversize Erigo saat ini menjadi pilihan terbaik untuk tampil stylish dengan produk yang berkualitas tinggi dan berbagai pilihan warna. Dengan model oversize dan sablon timbul yang berkualitas, T-Shirt HD Oversize Erigo dapat menambahkan percaya dirimu untuk tampil lebih keren. ",
          telp: "0362",
          foto:
              "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/31/950962144.jpg",
          idKelompokTani: 1,
          status: "Y",
          namaKelompok: "Erigo Apparel",
          createAt: "",
          updateAt: ""));
    }
    return kaos;
  }
}