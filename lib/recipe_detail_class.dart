class Resep {
  String image;
  String judul;
  String bahan2;
  String tutorial;
  String durasi;

  Resep({
    required this.image,
    required this.judul,
    required this.tutorial,
    required this.bahan2,
    required this.durasi,
  });
}

List<Resep> dataRecipe = [
  Resep(
    image: "assets/images/soto_ayam.jpeg",
    judul: "Soto Ayam Lamongan",
    durasi: "1 jam yang lalu",
    bahan2: """
4 potong ayam
800 ml air
Bumbu Halus
5 butir bawang merah
3 siung bawang putih
2 butir kemiri sangrai
1 ruas jari jahe
1 ruas kunyit
1 sdt ketumbar
1/2 sdt jinten
Bahan Cemplung
1 batang sereh
3 lembar daun jeruk
2 lembar daun salam
1 ruas lengkuas, geprek
1 sdt kaldu bubuk
1 sdt garam
Pelengkap
iris Kol,
50 gr taoge
2 batang daun bawang, iris
1 buah tomat, iris
1 buah jeruk kesturi
secukupnya Perkedel
secukupnya Bawang goreng
Sambal
50 gr cabe rawit, rebus
2 siung bawang putih, goreng
2 buah kemiri, goreng
Secukupnya garam dan kaldu
""",
    tutorial: """
1. Cuci bersih ayam, taruh dalam panci. Blender bumbu halus lalu rebus dengan ayam. Masukkan juga bumbu cemplung.
2. Setelah ayam empuk, ambil ayam lalu goreng kemudian suwir-suwir. Biarkan air rebusan. Ambil semua bahan cemplung agar kuah soto jernih.
3. Siapkan pelengkapnya.
4. Ambil mangkok, tata nasi, tauge, kol, perkedel, tomat dan daun bawang serta suiran ayam. Lalu siram dengan kuah sotonya. Beri taburan bawang goreng. Sajikan disertai perasan jeruk dan taburan bawang goreng juga sambal.
""",
  ),
  Resep(
    image: "assets/images/opor_ayam.jpg",
    judul: "Opor Ayam Kampung",
    durasi: "1 jam yang lalu",
    bahan2: """
1/2 ekor ayam kampung
400 ml santan kental (dari 1/2 butir kelapa tua parut)
400 ml air kaldu ayam
Secukupnya minyak goreng
Bawang merah goreng (u/ taburan)
Bumbu penyedap : garam, kaldu ayam / msg, gula merah
# Bumbu Halus :
8 siung bawang merah
5 siung bawang putih
2 butir kemiri
2 ruas jari kunyit
1 ruas jari jahe
1,5 ruas jari lengkuas
1/4 sdt ketumbar bubuk
1/4 sdt jinten
# Bahan Aromatik :
2 lembar daun salam
2 lembar daun jeruk
1 batang sereh (geprek)
""",
    tutorial: """
1. Siapkan bahan-bahannya.
2. Rebus ayam dengan panci presto kira-kira 20 menit dihitung dari waktu mendidih. (Tambahkan 1 batang sereh).
3. Haluskan bumbu halus. Tumis dengan secukupnya minyak goreng, tambahkan bahan aromatik, masak sampai bumbu matang.
4. Kemudian setelah bumbu matang, masukkan ayam yang sudah dipresto, aduk2 sebentar. Lalu tambahkan santan dan air kaldu sisa merebus ayam tadi.
5. Tambahkan bumbu penyedap. Masak sampai kuah matang (cirinya keluar minyak). Koreksi rasa. Angkat dan sajikan.
""",
  ),
];

var ingredientsItems = [
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Ayam",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Sawi Putih",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Buncis",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Tahu",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Labu Siam",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Sapi",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Telur",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Santan",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Kol",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Cabai",
  },
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Tepung Terigu",
  }
];
