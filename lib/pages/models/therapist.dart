class Therapist {
  final String nama;
  final String kesediaan;
  final String pengalaman;
  final String sertifikasi;
  final String alamat;
  final double jarak;
  final String imageTherapist;

  Therapist({
    required this.nama,
    required this.kesediaan,
    required this.pengalaman,
    required this.sertifikasi,
    required this.alamat,
    required this.jarak,
    required this.imageTherapist
  });

  factory Therapist.fromJson(dynamic json) {
    return Therapist(
        nama: json['nama'] as String,
        kesediaan: json['kesediaan'] as String,
        pengalaman: json['pengalaman'] as String,
        sertifikasi: json['sertifikasi'] as String,
        alamat: json['alamat'] as String,
        jarak: json['jarak'] as double,
        imageTherapist: json['imageTherapist'][0]['hostedLargeUrl'] as String);
  }

  static List<Therapist> therapistFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Therapist.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Therapist {nama: $nama, kesediaan: $kesediaan, pengalaman: $pengalaman, sertifikasi: $sertifikasi, alamat: $alamat, jarak: $jarak, imageTherapist: $imageTherapist}';
  }
}