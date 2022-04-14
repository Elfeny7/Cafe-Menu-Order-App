class Order {
  String nama;
  String harga;
  String image;

  Order({
    required this.nama,
    required this.harga,
    required this.image,
  });
}

var orderList = [
  Order(
    nama: "Nasi Goreng",
    harga: "Rp 12.000",
    image: "assets/images/nasgor.jpg",
  ),
  Order(
    nama: "Mie Goreng",
    harga: "Rp 10.000",
    image: "assets/images/mie.jpg",
  ),
  Order(
    nama: "Bakso",
    harga: "Rp 9.000",
    image: "assets/images/bakso.jpg",
  ),
  Order(
    nama: "Es Teh",
    harga: "Rp 5.000",
    image: "assets/images/esteh.jpg",
  ),
  Order(
    nama: "Es Jeruk",
    harga: "Rp 6.000",
    image: "assets/images/esjeruk.jpg",
  ),
  Order(
    nama: "Cappuchino",
    harga: "Rp 10.000",
    image: "assets/images/kopi.jpg",
  ),
];
