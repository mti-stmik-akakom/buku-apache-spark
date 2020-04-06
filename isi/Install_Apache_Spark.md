
# Install Apache Spark
Apache Spark adalah sub-project dari Hadoop, oleh karena itu Spark akan berjalan dengan baik pada platform Linux Mint (*command* ini juga bisa untuk Linux Debian & Ubuntu). Berikut adalah langkah-langkah install Apache Spark pada sistem operasi linux.

 1. Verifikasi Instalasi Java
 2. Verifikasi Instalasi Scala
 3. Download Apache Spark
 4. Install Apache Spark
 5. Verifikasi Instalasi Spark


## 1. Verifikasi Instalasi Java
Cek versi java dengan mengetik 

    $java -version
Jika Java sudah terinstall, maka akan muncul versi Java sesuai yang sudah di install.

    java version "1.8.0_241" 
    Java(TM) SE Runtime Environment (build 1.8.0_241-b07)
    Java HotSpot(TM) 64-Bit Server VM (build 25.241-b07, mixed mode)
Pastikan versi java adalah versi 8, karena Apache Spark akan berjalan dengan dengan baik pada java versi 8, bukan versi terbaru. Namun jika versi Java bukan versi 8 atau belum terinstall java, maka gunakan perintah berikut untuk install versi 8.

    $sudo apt install openjdk-8-jdk
Setelah proses install selesai, gunakan perintah ini untuk mengaktifkan java versi 8.

    $sudo update-alternatives --config java
## 2. Verifikasi Instalasi Scala
Lakukan verifikasi terhadap instalasi Scala dengan mengetik *command* sebagai berikut:

    $scala -version
Jika scala sudah terinstall dengan baik, maka akan muncul respon sebagai berikut:

    Scala code runner version 2.11.6 -- Copyright 2002-2013, LAMP/EPFL
Jika belum terinstall, maka silahkan download scala terlebih dahulu di https://www.scala-lang.org/download/
Kemudian gunakan perintah berikut untuk *extract file*

    $ tar xvf scala-2.11.6.tgz
Pindahkan file instalasi scala ke folder yg berbeda **(/usr/local/scala)**

    $ su – 
    Password: 
    # cd /home/Hadoop/Downloads/ 
    # mv scala-2.11.6 /usr/local/scala 
    # exit
Gunakan perintah berikut untuk set Path Scala

    $ export PATH = $PATH:/usr/local/scala/bin
Selanjutnya lakukan verifikasi scala

    $scala -version
jika scala sudah berhasil di install, maka akan muncul respon sebagai berikut:

    Scala code runner version 2.11.6 -- Copyright 2002-2013, LAMP/EPFL
## 3. Download Apache Spark
Download apache spark di link [https://spark.apache.org/downloads.html](https://spark.apache.org/downloads.html). Pilih versi stabil (*bukan versi review*) dan versi `Pre-built for apache Hadoop 2.7`. Tunggu hingga proses download selesai, dan hasil download akan ada di folder `Download`.

## 4. Install Apache Spark
**Ikut Perintah berikut untuk Install Apache Spark**
Ketik *command* dibawah ini untuk extract file:

    $ tar xvf spark-1.3.1-bin-hadoop2.6.tgz
Pindahkan folder software spark ke folder **(/usr/local/spark)**

    $ su – 
    Password:  
    
    # cd /home/Hadoop/Downloads/ 
    # mv spark-1.3.1-bin-hadoop2.6 /usr/local/spark 
    # exit
Setting *environtment* spark

    export PATH=$PATH:/usr/local/spark/bin
Gunakan perintah berikut untuk *sourcing* file ~/.bashrc

    $ source ~/.bashrc
## 5. Verifikasi Instalasi Spark
Ketik command berikut untuk mencoba *running* apache spark

    $spark-shell
Jika apache spark telah terinstall dengan benar, maka akan muncul tampilan seperti berikut

    Spark assembly has been built with Hive, including Datanucleus jars on classpath 
    Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties 
    15/06/04 15:25:22 INFO SecurityManager: Changing view acls to: hadoop 
    15/06/04 15:25:22 INFO SecurityManager: Changing modify acls to: hadoop
    15/06/04 15:25:22 INFO SecurityManager: SecurityManager: authentication disabled;
       ui acls disabled; users with view permissions: Set(hadoop); users with modify permissions: Set(hadoop) 
    15/06/04 15:25:22 INFO HttpServer: Starting HTTP Server 
    15/06/04 15:25:23 INFO Utils: Successfully started service 'HTTP class server' on port 43292. 
    Welcome to 
          ____              __ 
         / __/__  ___ _____/ /__ 
        _\ \/ _ \/ _ `/ __/  '_/ 
       /___/ .__/\_,_/_/ /_/\_\   version 1.4.0 
          /_/  
    		
    Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.7.0_71) 
    Type in expressions to have them evaluated. 
    Spark context available as sc  
    scala>
Demikian tutorial cara install Apache Spark pada sistem operasi Linux Mint.

    Contributor: 
    Hendra
    Email: camp.hendra@gmail.com
    Mahasiswa Pasca Sarjana 
    Program Studi Magister Teknologi Informasi 
    STMIK Akakom Yogyakarta
    ~ Yogyakarta, 6 April 2020 ~

