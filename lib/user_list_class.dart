class ListUser {
  String name;
  String username;
  String jumlah_resep;
  String jumlah_cooksnap;
  List<String> gambar_makanan;
  List<String> nama_makanan;

  ListUser({
    required this.name,
    required this.username,
    required this.jumlah_resep,
    required this.jumlah_cooksnap,
    required this.gambar_makanan,
    required this.nama_makanan,
  });
}

List<ListUser> UserData = [
  ListUser(
    name: "dLinschiouZ",
    username: "@dLinschiouZ",
    jumlah_resep: "53 resep",
    jumlah_cooksnap: "30 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Kulit risoles", "Kulit risoles", "Kulit risoles"],
  ),
  ListUser(
    name: 'Feyra Yuniar',
    username: "@cook_15373316",
    jumlah_resep: "4 resep",
    jumlah_cooksnap: "149 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: [
      "Mie jagung goreng",
      "Tauco Puyuh Campur",
      "Donat simpel no mixer"
    ],
  ),
  ListUser(
    name: "Amanda Johnson",
    username: "@amanda_johnson",
    jumlah_resep: "10 resep",
    jumlah_cooksnap: "20 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Nasi Goreng", "Ayam Bakar", "Pisang Goreng"],
  ),
  ListUser(
    name: "Michael Smith",
    username: "@michael_smith",
    jumlah_resep: "15 resep",
    jumlah_cooksnap: "50 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Sate Ayam", "Rendang Daging", "Sop Buntut"],
  ),
  ListUser(
    name: "Sophie Brown",
    username: "@sophie_brown",
    jumlah_resep: "8 resep",
    jumlah_cooksnap: "35 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Pecel Lele", "Kue Lumpur", "Sambal Goreng Ati"],
  ),
  ListUser(
    name: "John Anderson",
    username: "@john_anderson",
    jumlah_resep: "12 resep",
    jumlah_cooksnap: "42 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Es Krim", "Martabak", "Tahu Bulat"],
  ),
  ListUser(
    name: "Emily Taylor",
    username: "@emily_taylor",
    jumlah_resep: "20 resep",
    jumlah_cooksnap: "60 cooksnap",
    gambar_makanan: [
      "assets/images/daging_ayam.jpg",
      "assets/images/beef_bibimbap_recipe.jpeg",
      "assets/images/masak_ayam.jpg"
    ],
    nama_makanan: ["Gado-Gado", "Nasi Kuning", "Ayam Goreng"],
  ),
];
