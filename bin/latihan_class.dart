import 'dart:io';

void main(){
  var komputer1 = Komputer();// buat objek
  komputer1.desc['merek'] = 'ASUS';
  // komputer1.penyimpanan = 512;
  // komputer1.ram = 8;
  komputer1.slotram.add(8);
  komputer1.slotram.add(16);
  komputer1.slotpenyimpanan.add(1024);
  komputer1.slotpenyimpanan.add(512);
  komputer1.desc['processor'] = 'I7 12700h';
  komputer1.cetak();
  // print(komputer1.processor);

  var komp2 = Komputer();
  komp2.desc['merek'] = 'LENOVO';
  // komp2.penyimpanan = 1000;
  // komp2.ram = 32;
  komp2.slotram.add(8);
   komp2.slotram.add(8);
  komp2.slotpenyimpanan.add(512);
  komp2.slotpenyimpanan.add(512);
  komp2.desc['processor'] = 'I5 10500';
  // print(komp2.processor);
  komp2.cetak();

  // var mhs1 = Mahasiswa();
  // mhs1.nama = 'Hengky';
  // mhs1.semester = 3;
  // mhs1.kelas = 'A';
  // mhs1.npm = 25421877;
  // mhs1.jenisKelamin = 'laki-laki';
  // mhs1.jurusan = 'informatika';
  // mhs1.cetak();
  // var mhs2 = Mahasiswa();
  // mhs2.nama = 'budi';
  // mhs2.semester = 5;
  // mhs2.kelas = 'Q';
  // mhs2.npm = 23421832;
  // mhs2.jenisKelamin = 'laki-laki';
  // mhs2.jurusan = 'sistem informasi';
  // mhs2.cetak();

}

class Komputer{
  String? merek;
  List  slotram =[];
  List slotpenyimpanan = [];
  String? processor;
  Map desc = {'merek':null,'processor': null}; //merek,processor

  cetak(){
    print('=====================================');
    print('Komputer ini mereknya ${desc['merek']}');
    for (var i = 0; i < slotram.length; i++) {
      print('Komputer ini punya slot ke-${i+1} ramnya ${slotram[i]} GB');
    }
    for (var i = 0; i < slotpenyimpanan.length; i++) {
       print('Komputer ini punya slot ke-${i+1} penyimpanannya ${slotpenyimpanan[i]} GB');
    }
   
    print('Komputer ini processornya ${desc['processor']}');
  }
}

//class mahasiswa -> attribut
class Mahasiswa{
  String? nama ;
  int? npm;
  String? kelas;
  String? jenisKelamin;
  String? jurusan;
  int? semester;

  cetak(){
    print('===================================');
    print('Nama : $nama');
    print('NPM : $npm');
    print('semester : $semester');
    print('kelas : $kelas');
    print('jenis kelamin : $jenisKelamin');
    print('jurusan : $jurusan');
  }
}