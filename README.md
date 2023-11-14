# exoplanet_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Nama: Aulia Rizqi Hidayatunnisa
NPM: 2206817881
Kelas: PBP - B

# TUGAS 7 
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Jawab: Stateless Widget adalah widget yang tidak akan pernah berubah. Stateless Widget  merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal. Stateless widget cocok untuk bagian-bagian antarmuka pengguna yang statis, yang tidak memerlukan perubahan berdasarkan input atau data dinamis. Sedangkan stateful widget merupakan Widget yang dapat berubah-ubah secara dinamis. Stateful widget digunakan ketika kita perlu memperbarui tampilan berdasarkan perubahan data atau input pengguna yang memungkinkan kita untuk merender ulang widget dengan keadaan yang berbeda.

Sumber: https://blog.rumahcoding.co.id/tutorial-flutter-3-perbedaan-stateless-widget-dan-statefull-widget/


2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Jawab:
- MyHomePage (StatelessWidget):

Ini adalah widget utama yang mewakili halaman utama dari aplikasi berupa tampilan yang akan ditampilkan kepada pengguna. Berisi AppBar, judul, dan GridView dengan daftar item toko. Digunakan untuk menampilkan tampilan utama aplikasi.


- Scaffold:

Scaffold adalah widget yang memberikan kerangka kerja dasar untuk aplikasi Flutter. Ini menyediakan struktur tampilan yang umum, termasuk AppBar dan body. Di dalam Scaffold, Anda menentukan AppBar sebagai bagian atasnya dan body sebagai bagian isi utama.


- AppBar:

AppBar adalah widget yang digunakan untuk menampilkan bilah atas (baris atas) pada halaman aplikasi. Dalam aplikasi saya, AppBar memiliki judul "Exoplanet Store".


- body (SingleChildScrollView):

Ini adalah widget yang digunakan untuk menampilkan konten utama aplikasi. Berisi SingleChildScrollView untuk memungkinkan konten dapat digulir jika diperlukan.


- SingleChildScrollView:

SingleChildScrollView adalah widget yang digunakan untuk mengelilingi konten yang dapat digulir. Ini memungkinkan pengguna untuk menggulir tampilan jika kontennya tidak muat di layar.


- Column:

Column adalah widget yang mengatur tata letak vertikal, sehingga semua widget yang ada di dalamnya akan diatur dalam satu kolom vertikal.
Dalam kode saya, Column digunakan untuk mengatur elemen-elemen tampilan seperti judul dan GridView.


- GridView.count:

GridView.count adalah widget yang digunakan untuk menampilkan daftar item dalam tata letak grid dengan jumlah kolom tetap. Ini digunakan untuk menampilkan daftar ShopCard yang sesuai dengan item toko yang diberikan.


- ShopItem:

Ini adalah kelas model yang digunakan untuk merepresentasikan item toko. Ini memiliki tiga properti: name, icon, dan color, yang mewakili nama item, ikon yang digunakan, dan warna latar belakang item.


- ShopCard (StatelessWidget):

ShopCard adalah widget yang digunakan untuk menampilkan kartu item toko. Setiap kartu mewakili satu item dari daftar toko dan memiliki fungsi onTap yang menampilkan Snackbar ketika kartu ditekan.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Jawab:
- Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
Kita perlu install Flutter terlebih dahulu dan mengkonfigurasi path nya dengan device. Lalu buka terminal dan masuk ke direktori di mana kita simpan proyek flutter. Generate proyek flutter baru dengan nama exoplanet_mobile kemudian masuk ke dalam direktori proyek tersebut. Jalankan proyek melalui terminal dengan menjalankan perintah flutter run. Lalu lakukan git init pada root folder dan lakukan add-commit-push proyek ke sebuah repositoru baru di Github

- Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - Melihat daftar item (Lihat Item)
    - Menambah item (Tambah Item)
    - Logout (Logout)

Buat file baru bernama menu.dart pada direktori exoplanet_mobile/lib dan tambahkan kode untuk mengimport package di baris pertama file tersebut. Pindahkan beberapa kode baris dari file main.dart ke file menu.dart yang baru saja dibuat. Import package pada menu.dart dan jalankan proyek melalui terminal untuk memastikan bahwa aplikasi dapat berjalan dengan baik. 

Untuk membuat widget buka file main.dart dan ubah kode pada main.dart untuk mengubah tema aplikasi. Pada file menu.dart ubah sifat widget dari stateful menjadi stateless dan tambahkan widget build. 

Lalu tambahkan teks dan card, mulai dengan define tipe pada list. Lalu tambahkan kode di dalam widget build untuk membuat tampilan utama dari aplikasi yang berisi judul toko, daftar item belanja, dan sebagainuya. Lalu membuat widget stateless baru untuk menampilkan card.

- Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
 "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
 "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

Membuat tampilan item yang dapat diklik oleh pengguna dalam aplikasi dan ketika item tersbeut ditekan, sebuah snackbar akan muncul yang memberitahu pengguna bahwa mereka telah menekan item tersebut. Kode dimulai dengan pembuatan widget material, yang di dalamnya terdapat widget Inkwell (untuk mendeteksi ketika pengguna mengetuk item), lalu di dalam fungsi onTap terdapat ScaffoldMessenger.of(context) digunakan untuk mengakses messenger (pesan) Scaffold yang berkaitan dengan konteks yang diberikan. Ini memungkinkan kita untuk menampilkan Snackbar.
.hideCurrentSnackBar() digunakan untuk menyembunyikan Snackbar yang sedang ditampilkan, jika ada, sehingga pesan Snackbar yang sebelumnya bisa ditutup jika masih muncul.
.showSnackBar(SnackBar(...)) digunakan untuk menampilkan pesan Snackbar yang berisi teks yang memberi tahu pengguna bahwa mereka telah menekan tombol yang sesuai dengan nama item.

- Menjawab beberapa pertanyaan berikut pada README.md pada root folder.
- Melakukan add-commit-push ke GitHub.

# TUGAS 8 - PBP

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Jawab: Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya. Method ini menyebabkan route yang ditambahkan berada pada paling atas stack, sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna. Sedangkan Method pushReplacement() berfungsi untuk menggantikan route yang sedang terlihat oleh pengguna dengan sebuah route baru. Dengan menggunakan method ini, aplikasi akan beralih dari tampilan route yang sedang ditampilkan ke route yang baru ditentukan. Ketika digunakan pada stack route yang dikelola oleh Navigator, route yang sudah ada di atas stack akan langsung digantikan oleh route baru tanpa memengaruhi kondisi elemen stack yang berada di bawahnya.

Contoh Navigator.push():
Navigator.push(
    context,
   	MaterialPageRoute(builder: (context) {
  		return AboutPage()
  	})
);

Contoh Navigator.pushReplacement() :
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => DashboardScreen()),
);


sumber: https://belajarflutter.com/memahami-navigasi-routing-di-flutter/

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Jawab:
- Container : Sebuah widget yang dapat menampung widget lainnya dan memberikan properti seperti padding, margin, dan sebagainya. Contoh penggunaannya adalah mengelilingi widget lain untuk menetapkan batas atau memberikan desain.
- GridView : Meletakkan widget sebagai kisi yang dapat digulir. Contohnya adalah membuat tata letak grid dari widget.
- ListView : Meletakkan widget sebagai daftar yang dapat digulir. Contoh penggunaannya adalah membuat daftar scrollable dari widget
- Stack : Menumpuk widget anak satu di atas yang lain. Contoh penggunaannya adalah menata widget secara bersarang dan menumpuknya.
- Column dan Row : Mengatur widget anak secara vertikal dan horizontal 


Sumber : https://docs.flutter.dev/ui/layout

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Jawab: 
- TextFormField untuk Nama Produk
Digunakan untuk mengumpulkan informasi tentang nama produk. Mendukung validasi apakah input tidak boleh kosong.

- TextFormField untuk Jumlah Produk:
Digunakan untuk mengumpulkan informasi tentang jumlah produk. Mengkonversi input menjadi tipe data integer untuk keperluan penyimpanan.

- TextFormField untuk Deskripsi Produk:
Digunakan untuk mengumpulkan informasi tentang deskripsi produk. Memastikan deskripsi tidak boleh kosong.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Jawab: Clean Architecture membantu dalam memisahkan logika bisnis dari kode yang terkait dengan platform seperti UI, manajemen status, dan sumber daya eksternal. Selain itu, penerapan clean architecture memungkinkan kode yang kita hasilkan menjadi lebih mudah diuji secara independen.

Sumber : https://aditya-rohman.medium.com/mengembangkan-aplikasi-flutter-dengan-proses-test-driven-development-tdd-dan-mengadopsi-clean-29d29bb0702b

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Jawab:
- Menambahkan drawer menu untuk navigasi
Buka proyek sebelumnya, buat berkas baru dengan nama left_drawer.dart di dalam direktori baru widgets dan tambahkan beberap kode. Tambahkan import untuk halaman-halaman yang akan dimasukkan navigasinya ke dalam drawer menu, lalu masukkan routing untuk halaman yang diimpor. Kemudian tambahkan drawer header.

- Menambahkan form dan elemen input
Buat berkas baru pada direktori lib dengan nama shoplist_form.dart dan tambahkan kode. Ubah widget Placeholder dengan potongan kode, buat variabel baru bernama _formkey, atribut key akan berfungsi sebagai handler dari form state, validasi form, dan penyimpanan form. Isi widget Form dengan field dan buat widget Column sebagai child dari SingleChildScrollView. Buat widget TextFormField lalu tambahkan atribut crossAxisAlignment. Buat TextFormField dan buat tombol sebagai child dari column.

- Memberikan fungsionalitas dari tombol Tambah Item
Tambahkan beberapa kode dari Navigator.push di mana ketika tombol Tambah Item ditekan makan akan menampilkan tampilan menambahkan item/produk

- Membuat refactoring files 
- Melakukan add-commit-push ke GitHub.