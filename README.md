# myportofolio_mobile
Aplikasi portofolio pribadi berbasis mobile yang dikembangkan menggunakan Flutter dan Dart. Aplikasi ini merupakan versi mobile dari portofolio pribadi yang memungkinkan pengguna melihat informasi profil, pengalaman, serta proyek yang dimiliki.

Proyek ini dikembangkan sebagai bagian dari pembelajaran Pengembangan Perangkat Lunak dan Platform Berbasis Web (PBP) ^_^

### Prerequisites
Pastikan Flutter SDK dan Dart SDK sudah terpasang di perangkat.
### Set Up
1. git clone https://github.com/USERNAME/REPOSITORY.git
2. cd myportofolio_mobile
3. Update dependency Flutter 
-> flutter pub get
4. Periksa konfigurasi Flutter 
-> flutter doctor
5. Jalankan aplikasi
-> flutter run

### Tugas 7
1. Jelaskan apa yang dimaksud dengan widget tree pada Flutter dan bagaimana hubungan induk-anak (parent-child) bekerja antar-widget!
= Widget tree adalah struktur hierarkis yang menggambarkan seluruh UI aplikasi Flutter. Struktur ini disusun selama tahap tata letak (meliputi pengukuran dan informasi struktural) serta digunakan saat proses rendering (menampilkan bingkai ke layar) dan pengujian deteksi sentuhan (interaksi sentuh).

Hubungan parent-child bekerja dengan aturan: parent adalah widget yang mengandung widget lain di dalam method build()-nya, child adalah widget yang diletakkan di dalam parent. Data mengalir dari parent ke child, contohnya seperti parent mengatur ukuran dan posisi child, sehingga apabila state parent berubah maka seluruh sub-tree child akan ikut ke rebuild. Widget dengan satu child memakai parameter child (Container, Center, Padding), sedangkan widget dengan banyak child memakai children (Column, Row, Stack).

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya masing-masing!
= Widget root dan halaman: MaterialApp sebagai root aplikasi yang menyediakan tema, routing, dan localization; Scaffold sebagai kerangka halaman dengan AppBar, body, dan SnackBar; AppBar sebagai bar judul di atas.

Widget layout: Padding memberi jarak dalam di sekeliling child; Column menyusun child vertikal; Row menyusun child horizontal; Center memusatkan child; SizedBox memberi jarak kosong dengan ukuran tetap; GridView.count menampilkan grid dengan jumlah kolom tetap; Container sebagai kotak serbaguna untuk padding, width, color, dan decoration.

Widget tampilan: Text menampilkan teks; Icon menampilkan ikon; Card memberi kotak dengan elevasi atau bayangan; Material memberi warna latar plus efek ink ripple; InkWell mendeteksi tap dengan animasi ripple.

Widget interaksi: InkWell sebagai area tap; SnackBar sebagai notifikasi dari bawah layar; ScaffoldMessenger sebagai pengelola SnackBar global.

Widget custom: MyHomePage sebagai halaman utama (StatelessWidget); InfoCard sebagai kartu info profil; ItemCard sebagai kartu tombol aksi; ItemHomepage sebagai model data (bukan widget) untuk item menu.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini umumnya digunakan sebagai root widget pada aplikasi Flutter!
= MaterialApp adalah widget yang membungkus seluruh aplikasi dan menyediakan infrastruktur Material Design: theme global (colorScheme, textTheme), routing antar halaman, localization multi-bahasa, Navigator untuk push/pop, Overlay untuk SnackBar/Dialog, MediaQuery untuk info ukuran layar, dan Directionality untuk arah teks.

MaterialApp menyediakan konteks global yang dibutuhkan widget turunan, tanpa MaterialApp, widget seperti Text, AppBar, Card, SnackBar tidak bisa berfungsi karena butuh Theme, Directionality, dan Overlay. Selain itu, MaterialApp juga berperan sebagai titik masuk tunggal untuk konfigurasi global (tema, locale, routing dideklarasikan sekali lalu diwarisi semua halaman). MaterialApp juga menciptakan Navigator internal sehingga Navigator.push/pop bisa bekerja dari widget mana pun di bawahnya.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget! Kapan kita sebaiknya memilih StatelessWidget dan kapan harus menggunakan StatefulWidget?
= StatelessWidget: tidak punya state internal, tampilannya hanya dari data constructor, rebuild hanya saat parent rebuild, lebih ringan. Contoh: Text, Icon, Card. Cocok untuk widget yang hanya menampilkan data (MyHomePage, InfoCard, ItemCard).

StatefulWidget: punya State yang bisa berubah via setState(), bisa rebuild sendiri, punya lifecycle (initState, dispose). Contoh: TextField, Checkbox, Counter. Cocok untuk widget yang perlu mengubah tampilan sendiri akibat interaksi atau state berubah seiring waktu.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?
= BuildContext adalah alamat sebuah widget di dalam widget tree. Dengan buildcontext, kita dapat mengakses data yang disediakan oleh widget di atasnya.  Misalnya, saat Anda memanggil Theme.of(context), Flutter akan mencari widget Theme terdekat di atas posisi context tersebut dan mengambil datanya. Di dalam metode build, context digunakan untuk membaca properti widget ancestornya, dan bila perlu mengakses widget yang baru dibuat di dalam build yang sama, harus membungkusnya dengan Builder agar mendapatkan context baru yang posisinya berada di bawah widget tersebut. 

6. Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?
= Hot reload: update kode baru tanpa kehilangan state. Digunakan untuk mengubah UI, warna, teks, layout.
Hot restart: restart app, state reset ke awal. Digunakan untuk mengubah initState, main(), nilai default variabel, global/static. Seperti reboot HP.
Hot reload tidak bisa diandalkan ketika perubahan menyentuh hal-hal yang hanya dieksekusi sekali saat inisialisasi, yaitu mengubah isi initState(), mengubah nilai default field/global/static, mengubah main(), mengubah struktur widget (misalnya StatelessWidget menjadi StatefulWidget), mengubah enum/const/typedef, serta mengubah native code (Android/iOS).

Deklarasi AI:
Tidak ada penggunaan AI dalam mengerjakan tugas 7 karena perubahan yang dilakukan hanya perubahan pada warna.
