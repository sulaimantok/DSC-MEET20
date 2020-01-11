## Meet ke-dua

Pada pertemuan kali ini, akan fokus mempelajari bagaimana mendeploy aplikasi sederhana pada cloud, lebih mengarah kali ini di Compute Engine (VM)

## Persyaratan :
 - [x]sudah install virtual box
 - [x]Internet
 - [x]Bisa gunakan Compute engine jika belum install virtualbox (membutuhkan internet lebih dan akses)
 - [x]sudah menginstall salah satu server(eq. ubuntu 16.04)


## Step 
Untuk gambaran pengerjaan ada di sini [topo](topology.png)
Ada 2 opsi untuk dalam Hand's On kali ini, yaitu dengan VirtualBox(Laptop sendiri) atau Compute Engine(GCP), Konsep pengerjaan sama.

### 1. Persiapan Virtual Machine

#### Menggunakan virtualbox

1. Buka aplikasi virtualbox
2. Buka pengaturan Virtual Mesin(VM), tambahkan 2 Network
	- Network Pertama mode (NAT)
	- Network Kedua internal
3. Jika sudah klik **Ok**
4. Sebelum menyalakan, kita copy/clone terlebih dahulu
	- klik kanan
	- pilih clone
	- beri nama **database**
5. Sekarang pada VirtualBox, sudah ada 2 mesin
6. jalankan kedua mesin tersebut
4. Biarkan sampai ke proses booting selesai

**note: ketika membuat mesin, cukup alokasikan Ram masing-masing 256MB saja, tapi untuk ubuntu server atau lainnya**

#### Menggunakan Compute Engine 

1. Login ke Google Cloud Console [Console](https://console.cloud.google.com)

2. Create 2 instance, dengan ketentuan masing-masing instance :
	- Nama : Nama pertama : **website** dan  Yang kedua :**database** 
	- Region : asia-southeast1
	- Machine-type : g1-small
	- boot disk : Ubuntu 16 LTS
	- Firewall : 
		- [x] Allow HTTP trafic
3. Klik **Create**

### 2. Akses Virtual Machine

1. Pada virtualbox, ketika Mesin telah dijalankan kita siap menggunakan.
2. Pada Compute Engine, klik **SSH**, pada bagian kanan

### 3. Configuration

#### Global (Compute engine dan VirtualBox)
1. Check koneksi 
```
ping 1.1.1.1
```
2. Update Package dan install package tambahan
```
sudo apt-get update
sudo apat-get install git curl
```
3. Clone Repo Project
```
git clone https://github.com/sulaimantok/DSC-MEET20.git
```
4. Masuk ke Folder Project
```
cd DSC-MEET20/M2
```

#### Virtual Box configuration

1. Pertama lihat network yang tersedia

```
ip addr
```

lihat pada penamaan network interface yang kedua, ingat atau catat.

2. Rubah configurasi dan Jalankan

```
nano ipconfiguration.sh
chmod +x ipconfiguration.sh
sh ipconfiguration.sh
```

Lakukan hal yang sama juga pada Mesin kedua hanya ubah beberapa hal, pada file configurasi ada penjelasan. Pada Compute Engine tidak perlu di konfigurasi karena otomatis

### 4. Install Package 

1. Pada VirtualMachine atau Instance pertama

```
sudo apt-get install apache2 php libapache2-mod-php
```

Kita juga dapat menggunakan nginx, karena kita menggunakan ubuntu 16.04, beberapa ada yang crash perlu advance configurasi jadi kita menggunakan Apache

2. Check dengan komen berikut

```
curl http://localhost
```

Jika jalan, maka akan muncul content

3. Pada instance atau Virtual Machine yang kedua (database)

```
sudo apt-get install mysql-server
```

### 5. Let's Deploy

Cara seperti ini mungkin sudah jadul, tapi untuk memahami dasarnya penting, Sebelum kedepan kita gunakan cara yang yang lebih efisien

1. Salin semua file yang ada pada folder **CRUD** ke /var/www/html

```
sudo cp CRUD/* /var/www/html
```

2. Edit file **config.php**
```
cd /var/www/html
nano config.php
```

Ubah sesui ketentuan berikut

| variables | value |
| ------------- | ------------- |
| $databaseHost | 10.10.10.20  |
| $databaseName | test |
| $databaseUsername | root |
| $databasePassword |  |

tekan **ctrl+w dan y** setelah selesai mengedit

catatan : untuk ip internal pada Compute Engine, bisa dilihat pada dashboard Compute Engine GCP ada keterangan **Internal IP**

3. Setelah selesai Coba akse pada browser alamat dari instance pertama tersebut(IP Eksternal), untuk yang menggunakan Virtualbox, bisa check dengan

```
ip addr
```

lihat ip yang pertama 

Restart service
```
sudo service apache2 restart
```

4. Konfigurasikan database
- masuk pada instance database
```
mysql -u root -p
```

Enter saja tanpa memasukan password

lalu tuliskan perintah sesuai dengan file **database.sql**

5. Jika sudah coba check pada Browser dengan mengakses aplikasi tersebut


Jika ada yang perlu ditanyakan, bisa ke 
- Telegram  : @sulaiman_26
- Rahmadillah Maulana

Apabila ada command atau syntax yang salah, typo, atau sudah tidak work, silahkan hubungi saya.