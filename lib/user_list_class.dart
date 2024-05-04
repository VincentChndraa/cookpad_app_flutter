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
  )
];
