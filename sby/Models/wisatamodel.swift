//
//  wisatamodel.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import Foundation
import SwiftUI
import CoreLocation
enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    case fb = "Food and Beverage"
    case shop = "Shopping"
    case mon = "Monument"
    case mus = "Museum"
}

struct wisata: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let star: String
    let alamat: String
    let jam: String
    let telp: String
    let category: Category.RawValue
    //var fav: Bool
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}

extension wisata{
    static let all: [wisata] = [
        wisata(name: "Sego Sambel Mak Yeye",
               image: "https://cdn-asset.jawapos.com/wp-content/uploads/2020/10/iwak-p-560x374.jpg",
               description: "Buka sejak tahun 1982, kuliner khas Surabaya ini menyajikan menu penyetan sederhana. Ada banyak pilihan lauk pauk yang bisa kamu pilih, mulai dari tempe, tahu, telur, hingga ikan pari.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jalan Jagir Wonokromo Wetan Nomor10, Jagir, Wonokromo, Surabaya.",
               jam: "21.00 - habis",
               telp: "-",
               category: "Food and Beverage",
               coordinates: Coordinates(latitude: -7.301117199693841,  longitude: 112.73801523948161)
              //fav: True
              ),
        wisata(name: "Sate Klopo Ondomohen",
               image: "https://assets.grab.com/wp-content/uploads/sites/9/2019/06/01020722/Sate-Klopo-Makanan-alt-2-700x700.png",
               description: "Wisata kuliner legendaris Surabaya. Ini karena sate klopo ondomohen Ny. Asih sudah ada sejak 1945. Proses pembuatannya sedikit unik dibanding yang lainnya. Daging-daging untuk sate harus dilumuri terlebih dahulu dengan kelapa parut berbumbu (kacang, cabai rawit, dan irisan bawang merah), baru kemudian dibakar.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jalan Walikota Mustajab No 36, Ketabang, Kec. Genteng, Kota Surabaya",
               jam: "07.00 – 23.00",
               telp: "-",
               category: "Food and Beverage",
               coordinates: Coordinates(latitude: -7.259926566788896, longitude: 112.74424595482397)),
        wisata(name: "Patung Suro dan Boyo",
               image: "https://d3hzxw6fwm263k.cloudfront.net/uploads/events/photos/1500532709-CP8w9AMTewXGx6PBVG1Rfwbp62SS8JMy.jpg?width=1200&quality=78",
               description: "Patung ini merupakan simbol dari kawasan berjuluk kota pahlawan ini. Nama kata Surabaya sendiri berasal dari dua hewan yakni Sura yang memiliki arti hiu dan baya yang berarti buaya. Konon hal itu dikaitkan dengan kisah perkelahian hidup dan mati antara Adipati Jayengrono yang menguasai ilmu buaya dan Sawunggaling yang menguasai ilmu sura.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jl. Diponegoro No.1-B, Darmo, Kec. Wonokromo, Kota Surabaya",
               jam: "24 jam",
               telp: "-",
               category: "Monument",
               coordinates: Coordinates(latitude: -7.2958257133721025, longitude: 112.73864755297429)),
        wisata(name: "Monumen Tugu Pahlawan",
               image: "https://www.surabayarollcake.com/wp-content/uploads/2019/01/Monumen-Tugu-Pahlawan-Surabaya.jpg",
               description: "Monumen Tugu Pahlawan merupakan salah satu ikon bersejarah yang menjadi ciri khas kota Surabaya. Monumen Tugu Pahlawan dibangun untuk memperingati peristiwa Pertempuran 10 November 1945 di Surabaya, dimana arek-arek Suroboyo berjuang melawan pasukan sekutu dan Belanda yang hendak menjajah kembali Indonesia.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota Surabaya",
               jam: "08.00 – 16.00",
               telp: "-",
               category: "Monument",
               coordinates: Coordinates(latitude: -7.245648817904266, longitude: 112.73783915482389)),
        wisata(name: "Tunjungan Plaza",
               image: "https://awsimages.detik.net.id/community/media/visual/2022/04/14/penampakan-tunjungan-plaza-5-surabaya-terbakar-3_43.jpeg?w=700&q=90",
               description: "Tunjungan Plaza adalah sebuah pusat perbelanjaan terbesar kedua setelah Pakuwon Mall beserta PTC di Surabaya, sekaligus plaza yang paling populer di masyarakat kota Surabaya, yang didirikan pada tahun 1986, dan terakhir dibuka Tunjungan Plaza VI pada tahun 2017.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jl. Jenderal Basuki Rachmat No.8-12, Kedungdoro, Kec. Tegalsari, Kota Surabaya",
               jam: "10.00 – 22.00",
               telp: "-",
               category: "Shopping",
               coordinates: Coordinates(latitude: -7.262102225528677, longitude: 112.7384430971526)),
        wisata(name: "Galaxy Mall",
               image: "https://images.squarespace-cdn.com/content/v1/5649db6ae4b08bab0a26acc4/1553496740912-3RTZAQAU8JSH93GTNHUP/CADIZ-GALAXY-MALL-3-05.jpg?format=2500w",
               description: "Mal ini didirikan pada tahun 1996. Mal ini terdiri dari 5 lantai dengan penyewa - penyewa yang sudah terkenal sebagai perusahaan besar baik skala nasional maupun internasional antara lain Centro, Timezone, J.CO Donuts & Coffee, Pizza Hut, KFC, HokBen, Burger King, Bakmi GM, 99 Ranch Market, The Gourmet, Toys City, Timezone, Cinema XXI, Sogo, H&M, Uniqlo, Mothercare, Keris Departement Store, Body & Soul, Charles & Keith, Crocs, Giordano, Max Fashions, Miniso, Planet Sports, Pull&Bear, Scoop, Stradivarius, Zara, Celebrity Fitness, Food Galaxy, Jade Imperial, X.O Suki, Noodle House & Kitchen, Bentoya, Pepper Lunch, Qua-Li, Doner Kebab, Excelso, Sour Sally, Sushi Tei, Pancious, Maison Feerie, Nona Manis, Steak 21, Tous Les Jours, Boncafe, Lincafe, Apollo Gadget Store, Erafone Megastore, Indosat Ooredoo, Samsung, Digimap dan masih banyak lagi.",
               star: "⭐️⭐️⭐️⭐️⭐️",
               alamat: "Jl. Dharmahusada No.35-37, Mulyorejo, Kec. Sukolilo, Kota Surabaya",
               jam: "10.00 – 22.00",
               telp: "-",
               category: "Shopping",
               coordinates: Coordinates(latitude: -7.275473203236877, longitude: 112.78059321064553)),
        wisata(name: "Bon Ami",
               image: "https://www.bonami.co.id/v3/data/stores/bonami-jemursari-1.jpg",
               description: "Staff Bon Ami Bakery berkomitmen untuk memberikan pelayanan terbaik dan menyambut semua Sahabat Bon Ami bagaikan di rumah sendiri. Suguhan olahan Bon Ami Bakery menggunakan resep keluarga dengan sentuhan modern, dibuat secara higienis dengan standard tinggi dan menggunakan bahan-bahan berkualitas. Suguhan Bon Ami Bakery mengingatkan akan momen-momen hangat bersama yang terkasih.",
               star:"⭐️⭐️⭐️⭐️", alamat: "Dr. Soetomo 94 Surabaya, Jawa Timur",
               jam: "-", telp:"(031) 562 3800",
                    category: "Food and Beverage",
               coordinates: Coordinates(latitude: -7.283210570146246, longitude: 112.73519800720248)
                    
                ),
                wisata(
                    name: "Ikan Bakar Cianjur (IBC)",
                    image: "https://www.javatravel.net/wp-content/uploads/2020/02/Ikan-Bakar-Cianjur-1.jpg",
                    description: "Welcome to Ikan Bakar Cianjur. Here at IBC we believe that we're more than a restaurant, we're preservers of Indonesia' Culinary Heritage. As a restaurant, we strive to source locally as much as we can. We have our own greenhouse at our Pandaan outlet, where we grow some of our own hydroponic vegetables -which after each harvest we distribute them to our outlets. We pride in using fresh local ingredients, put together into delicious, healthy, family friendly meals suitable for lunch or dinner",
                    star: "⭐️⭐️⭐️", alamat: "Jl. Indragiri No.23, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241",
                    jam: "-", telp:" (081) 13866509 ",
                    category: "Food and Beverage",
                    coordinates: Coordinates(latitude: 51.4816,
                                             longitude: -0.191034)

                ),
                wisata(
                    name: "Zangrandi",
                    image: "https://hotel-management.binus.ac.id/files/2016/08/DSC06585.jpg",
                    description: "Zangrandi adalah kedai es krim yang menjadi salah satu ikon kuliner legendaris Surabaya. Kedai es krim ini berdiri sejak 1930an dan beralamat di pusat Kota Surabaya tepatnya di Jalan Yos Sudarso Nomor 15. Pengelola es krim Zangrandi Felix Tanumulia ditemui Kompas.com pada 2014 menceritakan sejarah Zangrandi di Surabaya. Ia bercerita banyak orang salah kaprah mengira Zangrandi adalah es krim belanda lantaran berdiri sejak zaman kolonial Belanda.",
                    star: "⭐️⭐️⭐️⭐️", alamat: "Jl. Yos Sudarso No.15, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
                    jam: "-", telp:"(031) 5345820",
                    category: "Food and Beverage",
                    coordinates: Coordinates(latitude: -7.263405917927377,
                                             longitude: 112.74611674781364)
                ),
                wisata(
                    name: "Museum WR Soepratman",
                    image:"https://1.bp.blogspot.com/-YjhwLqKXqlM/XX24dDLc0rI/AAAAAAAAJhA/WnsssA299dY1fpKKFqc0lLO6Bf-mrTD4gCKgBGAsYHg/s1600/Musem-WR-Soepratman-Surabaya-photo-feryarifian.jpg",
                    description: "Bangunan museum merupakan rumah milik kakak pertama WR. Soepratman, yang bernama Roekiyem Soepratijah. WR. Soepratman tinggal di rumah tersebut pada tahun 1937, hingga akhirnya meninggal dunia pada 17 Agustus 1938. Jl. Mangga No.21, Gedang Sewu, Surabaya Kel. Tambaksari / Kec. Tambaksari. Falisitas yang tersedia di destinasi wisata ini adalah toilet dan AC",
                    star: "⭐️⭐️⭐️", alamat: "Jl. Mangga No.21, Tambaksari, Kec. Tambaksari, Kota SBY, Jawa Timur 60136",
                    jam: "-", telp:"(031) 5013518",
                    category: "Museum",
                    coordinates: Coordinates(latitude: 51.4816,
                                             longitude: -0.191034)

                ),
                wisata(
                    name: "Museum Pendidikan Surabaya",
                    image: "https://www.retorika.id/gambar_artikel/362019-11-30%2005.29.42%201.jpg",
                    description: "Museum Pendidikan Surabaya merupakan museum tematik yang didirikan sebagai langkah pelestarian sejarah dan budaya bangsa dengan tujuan untuk mendukung kegiatan edukasi, riset dan rekreasi di Kota Surabaya. Diresmikan oleh Walikota Surabaya Tri Rismaharini pada 25 November 2019.",
                    star: "⭐️⭐️", alamat: "Jl. Genteng Kali No.10, Genteng, Kec. Genteng, Kota SBY, Jawa Timur 60275",
                    jam: "-", telp:"(031) 1234567",
                    category: "Museum",
                    coordinates: Coordinates(latitude: 51.4816,
                                             longitude: -0.191034)

                ),
                wisata(
                    name: "Museum De Javasche Bank",
                    image:"https://upload.wikimedia.org/wikipedia/commons/7/75/COLLECTIE_TROPENMUSEUM_Het_kantoor_van_de_Javasche_Bank_in_Soerabaja_TMnr_10015463.jpg",
                    description: "Museum ini memiliki tiga lantai dan menampilkan sejarah sistem perbankan di Indonesia, foto-foto lama dari Surabaya dan juga koleksi mata uang kuno. Tampilan museum dibagi menjadi tiga ruang yaitu Ruangan Koleksi Mata Uang Lama, Ruangan Koleksi dari Konservasi, dan Ruangan Koleksi Harta Budaya",
                    star: "⭐️⭐️⭐️", alamat: "Jl. Garuda No.1, Krembangan Sel., Kec. Krembangan, Kota SBY, Jawa Timur 60175",
                    jam: "-", telp:"(031) 3531829",
                    category: "Museum",
                    coordinates: Coordinates(latitude: 51.4816,
                                             longitude: -0.191034)

                ),
                wisata(
                    name: "Pakuwon Mall",
                    image: "https://asset.kompas.com/crops/ObqRCtMc2s8BhG5_NMn9blfXUCE=/29x0:1013x656/750x500/data/photo/2022/02/14/6209dc9ed8c28.png",
                    description: "Pakuwon Mall (sebelumnya bernama Supermal Pakuwon Indah) adalah pusat perbelanjaan terbesar di Indonesia dengan luas NLA sebesar 200.000 m2. Pusat perbelanjaan ini berdampingan dan menyatu dengan Pakuwon Trade Center (atau biasa disingkat PTC). Pusat perbelanjaan ini terletak di Jalan Puncak Indah Lontar no 2, Kompleks Perumahan Pakuwon Indah, Lontar, Sambikerep, Kota Surabaya dan merupakan bagian dari Pakuwon Indah Superblock dengan total luas 30 hektar, tepat di pusat CBD Surabaya Barat",
                    star: "⭐️⭐️⭐️⭐️⭐️", alamat: "Jl. Mayjend. Jonosewojo No.2, Babatan, Kec. Wiyung, Kota SBY, Jawa Timur 60227",
                    jam: "-", telp:"(031) 7393 888",
                    category: "Shopping",
                    coordinates: Coordinates(latitude: 51.4816,
                    longitude: -0.191034)

                ),
                wisata(
                    name: "Pasar Atom",
                    image: "https://surabayatravel.com/wp-content/uploads/2015/03/Pasar-Atom-Surabaya.jpg",
                    description: "Pusat Perbelanjaan Pasar Atom berdiri sejak tahun 1972 dan merupakan salah satu pusat perbelanjaan terbesar di Indonesia Timur pada umumnya dan di Surabaya pada khususnya. Pasar Atom merupakan Pusat Perbelanjaan yang sudah terkenal sejak lama akan keramaian dan kepadatan pengunjung serta tingginya perputaran omzet para pedagangnya.",
                    star: "⭐️⭐️⭐️", alamat: "Jl. Bunguran No.45, Bongkaran, Kec. Pabean Cantikan, Kota SBY, Jawa Timur 60161",
                    jam: "-", telp:"(031) 3551995",
                    category: "Shopping",
                    coordinates: Coordinates(latitude: 51.4816,
                    longitude: -0.191034)

                ),
                wisata(
                    name: "Monumen Tugu Pahlawan dan Sepuluh Nopember",
                    image: "https://asset.kompas.com/crops/xvrNh5VPIWgmEOr2rybwci3kwtU=/0x0:986x657/750x500/data/photo/2020/01/13/5e1bed0edcc32.jpg",
                    description: "Museum Sepuluh November Surabaya adalah salah satu museum yang terletak di Kota Surabaya, dibangun pada tahun 1945. Museum ini dibangun dengan tujuan untuk mempelajari dan memperdalam peristiwa Pertempuran Sepuluh November 1945, Museum Sepuluh November beralamat di Jalan Pahlawan, Surabaya.",
                    star: "⭐️⭐️⭐️", alamat: "Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java 60174",
                    jam: "-", telp:"(031) 3571100",
                    category: "Monument",
                    coordinates: Coordinates(latitude: 51.4816,
                    longitude: -0.191034)

                ),
                wisata(
                    name: "Monumen Kapal Selam",
                    image: "https://www.surabayarollcake.com/wp-content/uploads/2018/10/Monumen-Kapal-Selam-Monkasel.jpg",
                    description: "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
                    star: "⭐️⭐️⭐️", alamat: "Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
                    jam: "-", telp:"(031) 5490410",
                    category: "Monument",
                    coordinates: Coordinates(latitude: 51.4816,
                    longitude: -0.191034)
                ),
                wisata(
                    name: "Monumen Gubernur Suryo",
                    image: "https://lh3.googleusercontent.com/p/AF1QipPSPkVyL7eH-cqHhYIQma3FEdbXwKW9WWu3jZsL=s1600-w5472",
                    description: "Situated in the province of East Java, the Monumen Gubernur Suryo is located around a small park. The statue was constructed in honour of the first governor, and a national hero, of East Java, Governor Soerjo. It is quite stunning at night when illuminated. You will come across the statue many times while on touring the city as it is located in the city centre.",
                    star: "⭐️⭐️⭐️⭐️⭐️",
                    alamat: "Jl. Gubernur Suryo, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur",
                    jam: "-",
                    telp: "-",
                    category: "Monument",
                    coordinates: Coordinates(latitude: 51.4816,
                                             longitude: -0.191034)
                    
)
    ]
}
