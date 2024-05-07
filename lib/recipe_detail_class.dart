class Resep {
  String id;
  String image;
  String judul;
  String deskripsi;
  String bahan2;
  String cara_memasak;
  String durasi;
  String nama_user;
  String user_name;
  String kota_asal;

  Resep({
    required this.id,
    required this.image,
    required this.judul,
    required this.deskripsi,
    required this.cara_memasak,
    required this.bahan2,
    required this.durasi,
    required this.nama_user,
    required this.user_name,
    required this.kota_asal,
  });
}

List<Resep> dataRecipe = [
  //1.Soto Ayam//
  Resep(
    id: "R01",
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
    nama_user: "Arum Kusuma",
    user_name: "@Arum_Kusuma",
    kota_asal: "Bekasi, Jawa Barat, Indonesia",
  ),
  //2.Opor Ayam//
  Resep(
    id: "RO2",
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
    cara_memasak: """
1. Siapkan bahan-bahannya.
2. Rebus ayam dengan panci presto kira-kira 20 menit dihitung dari waktu mendidih. (Tambahkan 1 batang sereh).
3. Haluskan bumbu halus. Tumis dengan secukupnya minyak goreng, tambahkan bahan aromatik, masak sampai bumbu matang.
4. Kemudian setelah bumbu matang, masukkan ayam yang sudah dipresto, aduk2 sebentar. Lalu tambahkan santan dan air kaldu sisa merebus ayam tadi.
5. Tambahkan bumbu penyedap. Masak sampai kuah matang (cirinya keluar minyak). Koreksi rasa. Angkat dan sajikan.
""",
    nama_user: "Nani Wahyuni Hwang",
    user_name: "@nanihwang",
    kota_asal: "Purbalingga",
  ),
  //3.Nasi Liwet//
  Resep(
    id: "R03",
    image: "assets/images/nasi_liwet.jpg",
    judul: "Nasi Liwet Gurih ",
    deskripsi: """
Nasi liwet yang gurih dan dimakan bersama aneka macam lauk. Pada resep kali ini nasi liwet gurih dihidangkan dengan opor ayam panggang, telur rebus, kuluban (sayur urap) dan sambal korek. Proses masaknya saya menggunakan alat kuali tanah liat agar makin enak rasa dan aromanya.
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
    cara_memasak: """
1. Persiapan alat dan bahan. Beras dicuci dan ditiriskan. Bumbu cemplung daun salam, sereh dan pandan dicuci bersih.
2. Siapkan kuali tanah liat. Masukkan daun salam, sereh dan pandan.
3. Tambahkan beras, santan dan air secukupnya hingga merendam beras. Tambahkan juga garam dan kaldu bubuk. Aduk pelan agar tercampur.
4. Tutup dengan daun pisang kemudian tutup lagi dengan tutup kuali. Masak dengan api kecil hingga matang.
5. Setelah matang sajikan bersama dengan lauk pendamping
    """,
    nama_user: "Michelle Putri",
    user_name: "@michelleputri",
    kota_asal: "Jakarta",
  ),
  //4.Beef Bibimbap//
  Resep(
    id: "R04",
    image: "assets/images/beef_bibimbap_recipe.jpeg",
    judul: "Beef Bibimbap",
    deskripsi: """
Bibimbap, salah satu makanan dari korea yang sangat populer dan rasanya absolutely delicious! Saya suka banget bibimbap dan cukup gampang buatnya. Resep kali ini cuma pakai bahan" yang ada di kulkas.
    """,
    durasi: "29 menit yang lalu",
    bahan2: """
250 gr daging sapi (sliced)
1/2 buah bawang bombay
1/2 wortel
200 gr bayam (atau bisa pakai baby spinach)
1/2 paprika merah
1/2 paprika kuning
80 gr tauge
1 butir telur
Minyak wijen
4 siung bawang putih
Biji wijen secukupnya
Garam secukupnya
Lada bubuk secukupnya
Saus bibimbap
3 sdm gochujang (korean pasta)
1 sdm minyak wijen
1 sdm air
Gula secukupnya
Garam secukupnya
""",
    cara_memasak: """
1. Cuci bersih semua sayuran yang akan di gunakan.
2. Masak daging yang sudah di marinasi degan bawang bombai dan wortel yang sudah di iris seperti korek (lihat resep saya untuk beef bulgogi).
3. Lalu tumis bayam, tauge, dan paprika menggunakan minyak widen, dan bawang putih yanh sudah di haluskan, garam dan lada bubuk. Lalu taburi biji wijen. Tumis hingga layu ,Lalu ceplok 1 butir telur
4. Untuk saus bibimbapnya Masukan sekitar 1sdm minyak wijen campur dengan 3sdm gochujang, 1 sdm air dan gula, garam. Check rasa hingga pas.
5. Lalu campur nasi putih dengan semua sayuran dan daging tadi, juga telur ceploknya, dan juga saus bibimbapnya. Lalu di aduk rata sampai semuanya tercampur dan taburi dengan biji Wijen. Maka siap di nikmati.
    """,
    nama_user: "David Tan",
    user_name: "@davidtan",
    kota_asal: "Yogyakarta",
  ),
  //5. Salmon Teriyaki//
  Resep(
    id: "R05",
    image: "assets/images/Salmon Teriyaki.jpg",
    judul: "Salmon Teriyaki (Donburi ala Jepang untuk orang Diet)",
    deskripsi: """
Beberapa hari lalu aku dikasih hadiah dari temen aku jadinya auto kepikiran bikin rice bowl a.k.a donburi.
Tapi karena masih diet, jadi untuk nasi nya kuganti jadi parutan kembang kol. Enak juga ternyata. Teksturnya jadi mirip nasi tapi pastinya lebih rendah kalori dan lebih banyak serat.
    """,
    durasi: "3 minggu yang lalu",
    bahan2: """
200 gram ikan salmon fillet
1 sdm saus teriyaki
1 sdt shoyu (kecap asin)
1 sdm minyak wijen
Nasi kembang kol
1 buah kembang kol
1/2 sdt garam
1 sdm light olive oil
Topping (opsional)
Sejumput wijen sangrai
Sejumput nori bubuk
""",
    cara_memasak: """
1. Siapkan bahan. Salmon filet dan kembang kol
2. Campurkan semua bumbu untuk salmon. Aduk rata. Lalu masukkan salmon. Balurkan merata. Diamkan sambil membuat nasi kembang kol.
3. Rendam kembang kol dengan air garam untuk memastikan ulat mati dan pergi. Parut bagian bunga nya (bagian batangnya bisa disimpan untuk membuat tumisan atau masakan lain)
4. Tumis dengan light evo. Beri garam. Masak hingga matang. Masukkan ke bowl.
5. Panggang dengan sedikit light evo. Bagian kulit dibawah dulu. Masak hingga daging salmon berubah warna setidaknya setengahnya. Baru balik. Oles-oles dengan sisa marinasi tadi.
6. Letakkan di atas nasi kembang kol. Beri topping wijen sangrai dan nori bubuk.
7. Sajikan selagi hangat.
    """,
    nama_user: "Eva Liana",
    user_name: "@evaliana",
    kota_asal: "Semarang",
  ),
  //6. Crispy Chicken Skin with salted egg sauce//
  Resep(
    id: "R06",
    image: "assets/images/ChickenSkinSaltedEgg.jpg",
    judul: "Crispy Chicken Skin with Salted Egg Sauce",
    deskripsi: """
Sering pengin makan salted egg sauce tapi suka males karena ribet. Mau pake yang instan rasanya sedikit kurang pas
Semoga resep ini nggak terlalu ribet yaa. Cuma butuh sedikit effort aja kok hehe
    """,
    durasi: "1 minggu yang lalu",
    bahan2: """
Crispy chicken skin :
100 g kulit ayam (cuci bersih)
7 sdm tepung serbaguna (untuk adonan basah)
5 sdm tepung maizena
Salted egg sauce :
2 siung bawang putih (cincang halus)
2 buah kuning telur asin
1/2 potong putih telur asin (cincang)
3 sdm susu UHT (bisa diganti santan)
2 buah cabai merah (iris tipis)
3 buah cabai rawit (atau sesuai selera)
Garam
Penyedap
""",
    cara_memasak: """
1. Masukkan kulit ayam yang sudah dipotong-potong ke dalam adonan basah, kemudian pindahkan ke dalam toples yang sudah berisi tepung maizena, tutup dan kocok hingga tepung merata. Apabila kulit ayam belum terlapisi dengan baik, tambahkan lagi tepung maizena.
2. Goreng kulit ayam yang sudah dilapisi tepung ke dalam minyak panas dengan api sedang. Setelah keemasan dan kira-kita kulit ayam sudah matang, angkat dan tiriskan.
3. Untuk bahan saus, haluskan kuning telur dan campur dengan susu / santan.
4. Panaskan sedikit minyak goreng, tumis bawang putih hingga harum kemudian masukkan irisan cabai dan putih telur asin, oseng sebentar.
5. Tambahkan garam dan penyedap kemudian cek rasa.
6. Terakhir, masukkan kulit ayam yang sudah digoreng, kemudian aduk hingga saus telur asin melapisi seluruh bagian kulit ayam.
    """,
    nama_user: "Alexandra Wang",
    user_name: "@alexandrawang",
    kota_asal: "Malang",
  ),
  //7.  Ayam Betutu Khas Bali//
  Resep(
    id: "R07",
    image: "assets/images/AyamBetutuwithSambelMatah.jpg",
    judul: "Ayam Betutu Sambel Matah Khas Bali",
    deskripsi: """
Baru aja balik dari bali tapi udah rindu sama Ayam betutu dan Sambel matah nya ajaaaa.
Jadi hari ini aku mau masak ayam betutu dan sambel matah khas bali made by me.
     """,
    durasi: "2 Bulan yang lalu",
    bahan2: """
1 ekor ayam kampung
Bumbu halus
15 butir bawang merah
8 butir bawang putih
10 buah cabe rawit
2 buah sereh
5 kemiri sangrai
1 sdm terasi bakar
1 sdm ketumbar
5 buah daun jeruk
1 sdm garam
2 sdm gula
1 sdt lada putih
Penyedap rasa
Bumbu cacah
20 buah cabe rawit (bisa tetap utuh)
3 buah sereh
2 cm jahe
2 cm lengkuas
2 cm kunyit
2 cm kencur
Sambal matah
2 buah sereh
1 sdt terasi
8 buah cabe rawit
5 buah bawang merah
2 buah bawang putih
1/4 sdt garam
2 tetes cuka atau jeruk nipis
Minyak panas secukupnya 
""",
    cara_memasak: """
1. Cuci ayam kampung terlebih dahulu
2. Tumis bumbu halus dengan minyak secukupnya, jika sudah harum masukkan bumbu cacah aduk hingga tercampur rata
3. Jika bumbu sudah matang masukkan ayam aduk bumbu kedalam ayam (usahakan masukkan bumbu kedalam ayam agar menyerap) jika sudah beri air hingga ayam terendam keseluruhan ukep hingga 3-4 jam atau sampai air surut dan bumbu menyerap (jangan lupa koreksi rasa)
4. Sembari menunggu ayam direbus, cincang semua bahan sambal matah dan campur dengan garam, cuka dan terasi jangan lupa beri sedikit minyak panas.
5. Jika air sudah surut dan bumbu menyerap, makan ayam betutu siap dihidangkan
    """,
    nama_user: "Dennis Kurniawan",
    user_name: "@denniskurniawan",
    kota_asal: "Bali",
  ),
  //8. Babi Panggang Karo//
  Resep(
    id: "R08",
    image: "assets/images/BPK.jpg",
    judul: "Babi Panggang Karo (NON HALAL)",
    deskripsi: """
Ada 1 slice daging babi dikulkas tanggung kalo di saksang jd dipanggang aja buat berdua 
     """,
    durasi: "9 Bulan yang lalu",
    bahan2: """
1 slice daging babi (kurleb 500 gr)
1 bh jeruk nipis
1 sdk teh garlic bubuk (bs pakai bawang putih)
1 btg sereh yg segar
Secukupnya garam
Secukupnya kecap manis (saya pake bangi)
Sambal babi karo
5 bh cabe rawit merah
5 bh cabe rawit hijau
2 bh bawang putih
3 bh bawang merah (bs ganti bombay)
1 bh perasan air jeruk nipis
1 cm jahe merah
2 lbr daun jeruk (buang tulangnya)
Secukupnya andaliman
Secukupnya garam
Secukupnya kaldu jamur
""",
    cara_memasak: """
1. Marinasi daging babi dengan bumbu halus yg sudah di blend (jeruk nipis, garam, air perasan jeruk nipis, sereh) lalu tambahkan kecap dan garlic powder secukupnya (saya 2 sdk makan) lalu diamkan 30 mnt
2. Setelah itu panggang daging babi dengan api sedang hingga matang
3. Setelah matang potong2 dan sajikan dengan sambal cabe rawit atau sambal bpk karo (menggunakan darah).
4. Untuk sambel karo blender smua bumbu (kecuali darah) lalu masak darah dengan api kecil dengan bumbu blender hingga mendidih.
5. Setelah bumbu matang , sajikan bersama daging babi yang ada.
    """,
    nama_user: "Bryan Fernandez",
    user_name: "@bryanfernandez",
    kota_asal: "Medan",
  ),
  //9. Gurame Asam Manis//
  Resep(
    id: "R09",
    image: "assets/images/GuramiAsMa.jpg",
    judul: "Gurame AsMa (Asam Manis)",
    deskripsi: """
Abang tuksay lewat kebetulan ada ikan gurame beratnya 700gr wahhh gede banget , kalo beli Gurame AsMa di restoran pasti mahal mending masak sendiri 
     """,
    durasi: "1 Tahun yang lalu",
    bahan2: """
700 gr ikan gurame
1 buah nanas madu
1 buah wortel
1 siung daun bawang
Bumbu iris :
3 siung bawang putih
1 buah tomat
1 buah bawang Bombay
2 buah cabe merah / gendut
4 SDM saos tomat
2 SDM saos cabe
1 sdm saos tiram
Secukupnya saos raja
Secukupnya minyak ikan
1 Sdm maizena larutkan dg 4sdm air
Secukupnya garam, kaldu bubuk
Bahan celupan :
4 sdm Tepung terigu
3 sdm Tepung tapioka
Secukupnya kaldu bubuk
Secukupnya air dingin
""",
    cara_memasak: """
1. Bersihkan ikan buang dalemnya cuci bersih
2. Kemudian iris bagian dagingnya. Lalu potong dadu bagian dagingnya.
3. Panaskan minyak, celupkan ikan kedalam tepung adonan. Goreng hingga kecoklatan
4. Tumis bawang putih dan bawang Bombay hingga sdkit layu
5. Masukan juga nanas, wortel,daun bawang, cabe. Aduk hingga sedikit layu. Kemudian beri saos tiram, saos cabe,saos tomat, minyak ikan,garam, kaldu bubuk, saos raja. Beri air secukupnya.
6. Terakhir masukan larutan maizena untuk pengentalnya. Cek rasa
7. Siapkan piring saji, taruh ikan kemudian siram dengan saos asam manisnya. Sajikan
    """,
    nama_user: "Cindy Lee",
    user_name: "@cindylee",
    kota_asal: "Manado",
  ),
  //10. Sayur Asem//
  Resep(
    id: "R10",
    image: "assets/images/SA.jpg",
    judul: "Sayur Asem",
    deskripsi: """
Yok kembali ke bumi lagii, setelah makanan lebaran penuh santan dan gulaa, mari kita hempaskan dengan sayur asem.
Jangan lupa lengkapi dengan tempe goreng, sambal dan ikan asin Maaak.. 
     """,
    durasi: "5 menit yang lalu",
    bahan2: """
4 buah asam mentah atau 1 sdm asam jawa
1/2 buah labu siam uk. sedang
1/4 pepaya mentah uk.kecil
Segenggam biji melinjo
10 tangkai daun melinjo muda
1 buah jagung manis
100 gram kacang tanah
3 lembar Kol
1 ruas jari laos geprek
2 lembar daun salam
1 sdt garam
1 1/2-2 sdm gula pasir
Bumbu ulek
5 buah cabe merah buang biji
6 siung bawang merah
3 siung bawang putih
4 butir kemiri bulat
""",
    cara_memasak: """
1. Siapkan semua bahan, Cuci bersih dan potong2 semua sayuran.
2. Ulek bumbu sampai halus, sisihkan
3. Didihkan air, masukkan bumbu ulek, laos, daun salam dan asam
4. Biarkan beberapa menit supaya bumbu matang dan bau langu hilang.
5. Masukkan kacang tanah
6. Berturut-turut masukkan sayuran dari yang paling keras (jagung, biji melinjo dan pepaya mentah) sampai terakhir daun melinjo.Tambahkan gula garam sesuai selera
7. Taraa, cocok Maak buat makan siang2 
    """,
    nama_user: "Rina",
    user_name: "@rinaWooy_96",
    kota_asal: "Surabaya",
  ),
];

var ingredientsItems = [
  {
    "image": "assets/images/daging_ayam.jpg",
    "name": "Ayam",
  },
  {
    "image": "assets/images/sawi_putih.jpeg",
    "name": "Sawi Putih",
  },
  {
    "image": "assets/images/buncis.jpg",
    "name": "Buncis",
  },
  {
    "image": "assets/images/tahu.jpeg",
    "name": "Tahu",
  },
  {
    "image": "assets/images/labu_siam.jpeg",
    "name": "Labu Siam",
  },
  {
    "image": "assets/images/daging_sapi.jpeg",
    "name": "Sapi",
  },
  {
    "image": "assets/images/telur.jpg",
    "name": "Telur",
  },
  {
    "image": "assets/images/santan.jpeg",
    "name": "Santan",
  },
  {
    "image": "assets/images/kol.jpg",
    "name": "Kol",
  },
  {
    "image": "assets/images/cabai.jpeg",
    "name": "Cabai",
  },
  {
    "image": "assets/images/tepung.jpg",
    "name": "Tepung Terigu",
  }
];
