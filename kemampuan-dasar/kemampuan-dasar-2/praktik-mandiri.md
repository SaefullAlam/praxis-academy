#Catatan Git dan GitHub

//Membuat file baru index.html

Setelah file disave maka git akan mendeteksi file sebagai untrack file

• git status
• git add "index.html" 

Setelah ditambahkan maka file akan masuk ke stagging area, siap untuk dicommit. Untuk mengeluarkan dari stagging area dapat menggunakan perintah 

• git rm --cached "index.html"

Sebelum memulai commit, untuk pertama kali harus memasukkan data pengguna

• git config --global user.name "SaefullAlam"
• git config --global user.email "saefullalam7@gmail.com"

Apabila tidak sengaja masuk ke dalam vim, cara untuk keluar dengan mengetik perintah

• Esc -> :q!

Untuk melakukan commit, ketikkan perintah:

• git commit -m "Menambahkan file index.html"

//Mengubah file index.html dan menambahkan file style.css

• git status

Saat mengubah file index.html dan menambahkan file baru, maka file index.html akan terdeteksi sebagai modified file dan styles.css akan terdeteksi sebagai untrack file.

Cara untuk menambahkan seluruh file yang mengalami perubahan (tambah, delete, edit) secara sekaligus dengan

• git add .
• git status -> index.html & style.css masuk stagging area
• git commit -m "Mengubah file index.html dan menambahkan file style.css"

Untuk melihat perubahan apa saja yang telah dilakukan, jalankan perintah

• git log
• git log -3 -> hanya 3 log terbaru
• git log -- style.css -> spesifik log file style.css

Untuk mengembalikan file yang telah dihapus atau mengembalikan perubahan yang terjadi, ketikkan perintah

• git checkout [5 digit awal commit code] -- style.css
• git commit -m "Mengembalikan file style.css"


------------- Merge Conflict -----------------------

Membuat branch baru

• git branch dev

Memeriksa seluruh branch yang ada

• git branch

Pindah ke branch lain

• git checkout dev

Apabila hanya mengedit file tanpa menambahkan file baru (Modified tanpa untrack), maka bisa langsung commit tanpa add

• git commit -am "Mengubah file index.html"

Menambahkan graph secara visual

• alias graph = "git log --all --decorate --oneline --graph"
• graph

Cara untuk mempraktekkan merge di git
1. Masuk ke branch dev, ubah file index.html
2. Masuk ke branch master, ubah file index.html
3. Masukkan perintah
• git merge dev

4. Jika sudah mengolah file yang konflik, kemudian save dan masuk lagi ke konsol
5. Ketikkan perintah
• git status
• git add .
• git commit -m "Selesai memperbaiki merge conflict"
• graph

5. Setelah selesai melakukan merge, hapus branch yang sudah tidak diperlukan dengan cara

• git brach -d dev

------------- Remote Git--------------
Mengambil repo di GitHub dan menduplikat ke lokal dengan perintah

• git clone "https://"

Masuk ke dalam foldernya lalu cek sumber repo dengan cara

• git remote -v

Mengatur akun yang digunakan pada git 
• git config --list
• git config --global user.name "SaefullAlam".
• git config --global user.email "saefullalam7@gmail.com"

Proses editing sama seperti mengedit pada repo lokal, namun nanti ditambahkan perintah baru yaitu

• git pus

Memindahkan repo lokal ke repo GitHub

- Membuat folder kosong
- Mengubah folder biasa menjadi repository dengan perintah
• git Init

Setelah selesai melakukan manajemen file dan siap untuk diupload ke GitHub, lakukan langkah berikut:

- Buka GitHub, buat repository baru tanpa initialize repo, biarkan kosong
- hubungkan GitHub dengan repo git lokal dengan cara
 • git remote add origin "link repo github" -> origin adalah nama remote, bisa diganti apa saja
 - cek kembali remote dengan cara git remote -v. Jika sudah maka upload repo lokal ke repo Github dengan cara
• git push -u origin master -> origin adalah nama remote, master adalah nama branch

//Apabila file di GitHub diubah dan Repo lokal juga diubah dan ingin melakukan push

- perbarui remote git lokal dengan perintah
• git fetch
- setelah itu cek kembali dengan git status
- cek lagi dengan graph akan terlihat branch yang diverge
- lakukan merge dengab perintah
• git pull

- Betulkan file yang konflik, save. Kemudin jalankan perintah
• git add .
• git commit -m "Merge remote"
• git status
• git push


--------------Membuat Multi Remote Git-------------

- Duplikat salah satu repo dari GitHub
• git clone "https://"
- Tambahkan remote baru
• git remote add [nama remote] "https://"
• git fetch [nama remote]
