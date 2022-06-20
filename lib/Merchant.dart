class Merchant {
  String name, overview, openTime;
  String rating;
  List<String> location, contact, avaibility, img;
  // Tag must be min of 3
  Set<String> tag;
  Map<String, String> menu;

  Merchant({
    this.name = 'nama-merchant',
    this.overview = 'penjelasan-singkat-merchant',
    this.openTime = 'jam-buka-merchant',
    this.rating = '0',
    this.location = const ['lokasi-merchant', 'link-to-location'],
    this.contact = const ['kontak-merchant-1', 'kontak-merchant-2'],
    this.avaibility = const ['gojek', 'grab', 'shopeefood'],
    this.img = const ['img1-merchant', 'img2-merchant'],
    this.tag = const {'tag1', 'tag2', 'tag3'},
    this.menu = const {'item1': '0', 'item2': '1', 'item3': '2'},
  });
}

List<Merchant> merchantList = [
  Merchant(
    name: 'Janji Jiwa',
    overview:
        'Merek kopi yang berada dalam naungan Lunara Brands ini memang sudah melekat di hati para pelanggan setianya. Dengan mengusung konsep fresh-to-cup, Janji Jiwa menyajikan berbagai varian kopi maupun non-kopi.',
    openTime: '08.00 - 21.00',
    location: [
      'Komp. Citraland, Ruko I-Walk 2 No.8, Jl. Ahmad Yani, Banjarmasin'
    ],
    contact: [
      'https://www.instagram.com/kopijanjijiwa/',
      'https://twitter.com/janjijiwaid'
    ],
    avaibility: ['Gojek', 'Grab', 'Shopeefood'],
    img: ['img/janji-jiwa1.jpg', 'img/janji-jiwa2.jpg', 'img/janji-jiwa3.jpg'],
    rating: '9.5',
    tag: {'Minuman', 'Coffee', 'Tea', 'Toast'},
    menu: {
      'Latte': '20.000',
      'Kopi Hitam Manis': '15.000',
      'Kopi Soklat': '23.000',
      'Kopi Pandan': '23.000',
      'Black Tea Machiato': '15.000',
      'Peach Tea Machiato': '17.000',
      'Ham and Cheese Toast': '32.000',
    },
  ),
  Merchant(
    name: 'Gulu Gulu',
    overview:
        'Selain kopi, belakangan ini minuman boba juga naik daun dan sepertinya tidak turun-turun hingga waktu yang cukup lama. Cita rasa minuman boba yang manis-manis segar dipadukan dengan cheese foam gurih memang menjuarai banyak hati konsumen, nih.',
    openTime: '10.00 - 21.45',
    location: ['Duta Mall Banjarmasin, lantai 5'],
    contact: ['https://www.instagram.com/guluguluid/'],
    avaibility: ['Gojek', 'Grab', 'Shopeefood'],
    img: ['img/gulu-gulu1.jpg', 'img/gulu-gulu2.jpg', 'img/gulu-gulu3.jpg'],
    rating: '8.5',
    tag: {'Minuman', 'Cheese Tea', 'Boba'},
    menu: {
      'Cheese Umami Matcha': '24.000',
      'Cheese Ultimate Dark Choco': '19.000',
      'Cheese Tea Red Velvet': '19.000',
      'Brown Slurpy Bobba Fresh Milk': '19.000'
    },
  ),
  Merchant(
    name: 'Kopi Soe',
    overview:
        "Sepertinya tidak ada yah, yang tidak mengenal salah satu pelopor minuman susu rum regal yang satu ini. Kopi Soe merupakan salah satu brand waralaba minuman kekinian kopi yang baru berdiri pada tahun 2018, namun masih terus hype di kalangan pecinta kopi. Kopi Soe menggunakan nama-nama khas ‘Soe’ dalam berbagai menu yang dijual, seperti Soerum Regal, Yuzu SoeSoe, Soe Le, dan sebagainya.",
    openTime: '08.15 - 21.00',
    location: ['Jl. A. Yani KM 3.7 No. 266'],
    contact: [
      'https://twitter.com/kopi_soe',
      'https://www.instagram.com/kopisoe'
    ],
    avaibility: ['Gojek', 'Grab', 'Shopeefood'],
    img: ['img/kopi-soe1.jpg', 'img/kopi-soe2.jpg', 'img/kopi-soe3.jpeg'],
    rating: '8.0',
    tag: {'Minuman', 'Regal', 'Coffee'},
    menu: {
      'Kopi Soe Goela Merah': '18.000',
      'Kopi Hitam': '15.000',
      'Es Kopi Rum': '22.000',
      'Es Kopi Soe Roegal': '24.000',
      'Es Roegal (Rum Regal)': '24.000'
    },
  ),
  Merchant(
      name: 'Kopi Yor',
      overview:
          'Kopi Yor, bila Anda mencoba membacanya dengan cepat mungkin akan terdengar seperti ‘Kopyor’ ,yah. Kebetulan sekali, mereka juga menjual produk varian kopi yang dipadukan dengan kopyor, lho.',
      openTime: '09.00 - 21.30',
      location: ['Jl. Haryono M.T No. 49 Banjarmasin Tengah'],
      contact: ['https://kopiyor.com/', 'https://www.instagram.com/kopiyor/'],
      avaibility: ['Gojek', 'Grab', 'Shopeefood'],
      img: ['img/kopi-yor1.webp', 'img/kopi-yor2.jpg', 'img/kopi-yor3.jpeg'],
      rating: '8.5',
      tag: {'Minuman', 'Kopyor', 'Coffee'},
      menu: {
        'Es Kopi Yor': '26.000',
        'Es Kopi Awa': '20.000',
        'Es Yori': '22.000',
        'Es Kopi Tem': '12.000',
        'Es Kopi Buco': '23.000',
        'Ameribuco': '24.000'
      }),
  Merchant(
    name: 'Xiboba',
    overview:
        'Xiboba adalah sebuah brand yang menyajikan minuman boba (Bubble Tea) untuk seluruh masyarakat Indonesia. Terinspirasi dari kata “Xi Yue” yang berarti Kebahagiaan, Xiboba hadir dengan tujuan membawa kebahagiaan kepada setiap orang yang meminumnya melalui rasa yang khas.',
    openTime: '10.00 - 21.45',
    location: ['Jl. A. Yani KM 5 Pemurus Dalam Banjarmasin Selatan'],
    contact: [
      'https://kulogroup.com/xiboba/',
      'https://www.instagram.com/xiboba.indonesia/'
    ],
    avaibility: ['Gojek', 'Grab', 'Shopeefood'],
    img: ['img/xiboba1.jpg', 'img/xiboba2.jpg', 'img/xiboba3.jpg'],
    rating: '9.5',
    tag: {'Minuman', 'Boba', 'Brown Sugar'},
    menu: {
      'Brown Sugar Boba Fresh Milk': '27.000',
      'Brown Sugar Grass Jelly Fresh Milk': '27.000',
      'Brown Sugar Dalgona Boba': '27.000',
      'Signatue Matcha Dalgona with Hokkaido Milk Pudding': '29.000',
      'Signature Biscoff Dalgona with Hokkaido Milk Pudding': '35.000',
      'Crunchy Signature Kakao': '29.000'
    },
  ),
];
