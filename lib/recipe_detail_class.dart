class Resep {
  String image;
  String judul;
  String deskripsi;
  String bahan2;
  String cara memasak;
  String durasi;

  Resep({
    required this.image,
    required this.judul,
    required this.deskripsi,
    required this.cara_memasak,
    required this.bahan2,
    required this.durasi,
  });
}

List<Resep> dataRecipe = [
  //Soto Ayam//
  Resep(
    image: "assets/images/soto_ayam.jpeg",
    judul: "Soto Ayam Lamongan",
    deskripsi: """
Siapa yang tidak suka soto. Salah satu masakan nusantara berkuah yang seger banget. Ada banyak macam soto di Indonesia ini . Dan keluargaku suka sekali semua macam soto karena berkuah dan segar.

Minggu pagi saatnya kumpul pastinyaa lebih ceria karena adanya sarapan soto.. wuiih enaak pokoknyaa.
Terimakasih inspirasinya mbak nuri """,
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
    cara_memasak: """
1. Cuci bersih ayam, taruh dalam panci. Blender bumbu halus lalu rebus dengan ayam. Masukkan juga bumbu cemplung.
2. Setelah ayam empuk, ambil ayam lalu goreng kemudian suwir-suwir. Biarkan air rebusan. Ambil semua bahan cemplung agar kuah soto jernih.
3. Siapkan pelengkapnya.
4. Ambil mangkok, tata nasi, tauge, kol, perkedel, tomat dan daun bawang serta suiran ayam. Lalu siram dengan kuah sotonya. Beri taburan bawang goreng. Sajikan disertai perasan jeruk dan taburan bawang goreng juga sambal.
""",
  ),
  //Opor Ayam//
  Resep(
    image: "assets/images/opor_ayam.jpg",
    judul: "Opor Ayam Kampung",
    deskripsi: """
Di resep ini ayam kampungnya terlebih dahulu saya rebus dengan presto agar lebih cepat empuk, karena ayam kampung yang saya gunakan lumayan tua bukan ayam kampung muda. Kalau kalian ingin tidak pakai presto juga tidak apa2.
""",
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
    cara_memasak  : """
1. Siapkan bahan-bahannya.
2. Rebus ayam dengan panci presto kira-kira 20 menit dihitung dari waktu mendidih. (Tambahkan 1 batang sereh).
3. Haluskan bumbu halus. Tumis dengan secukupnya minyak goreng, tambahkan bahan aromatik, masak sampai bumbu matang.
4. Kemudian setelah bumbu matang, masukkan ayam yang sudah dipresto, aduk2 sebentar. Lalu tambahkan santan dan air kaldu sisa merebus ayam tadi.
5. Tambahkan bumbu penyedap. Masak sampai kuah matang (cirinya keluar minyak). Koreksi rasa. Angkat dan sajikan.
""",
  ),
  //Nasi Liwet//
  Resep(
    image: "assets/images/opor_ayam.jpg",
    judul: "Nasi Liwet Gurih ",
    deskripsi: """
    Nasi Liwet by Vincent. Nasi liwet yang gurih dan dimakan bersama aneka macam lauk. Pada resep kali ini nasi liwet gurih dihidangkan dengan opor ayam panggang, telur rebus, kuluban (sayur urap) dan sambal korek. Proses masaknya saya menggunakan alat kuali tanah liat agar makin enak rasa dan aromanya.
    """,
    durasi: "5 menit yang lalu",
    bahan2: """
400 gram Beras Pulen
1/2 bungkus Santan Instan
Air Secukupnya
Daun Pisang secukupnya sebagai penutup
Bumbu Cemplung
4 lembar Daun Salam
1 lembar Daun Pandan
1 batang Sereh
Garam secukupnya
Kaldu bubuk secukupnya 
""",
    cara_memasak  : """
1. Persiapan alat dan bahan. Beras dicuci dan ditiriskan. Bumbu cemplung daun salam, sereh dan pandan dicuci bersih.
2. Siapkan kuali tanah liat. Masukkan daun salam, sereh dan pandan.
3. Tambahkan beras, santan dan air secukupnya hingga merendam beras. Tambahkan juga garam dan kaldu bubuk. Aduk pelan agar tercampur.
4. Tutup dengan daun pisang kemudian tutup lagi dengan tutup kuali. Masak dengan api kecil hingga matang.
5. Setelah matang sajikan bersama dengan lauk pendamping
    """,
  ),

];
