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