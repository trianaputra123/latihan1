import 'dart:convert';

class Kaos {
  Kaos({
    required this.idPenjual,
    required this.nama,
    required this.nik,
    required this.alamat,
    required this.telp,
    required this.foto,
    required this.idKelompokTani,
    required this.status,
    required this.namaKelompok,
    required this.createAt,
    required this.updateAt,
  });
  int idPenjual;
  String nama;
  String nik;
  String alamat;
  String telp;
  String foto;
  int idKelompokTani;
  String status;
  String namaKelompok;
  String createAt;
  String updateAt;

  factory Kaos.fromJson(Map<String, dynamic> json) => Kaos(
      idPenjual: json["id_penjual"],
      nama: json["nama"].toString(),
      nik: json["nik"].toString(),
      alamat: json["alamat"],
      telp: json["telp"].toString(),
      foto: json["foto"].toString(),
      idKelompokTani: json["id_kelompok_tani"],
      status: json["status"].toString(),
      namaKelompok: json["nama_kelompok"].toString(),
      createAt: json["create_at"].toString(),
      updateAt: json["update_at"].toString());
}