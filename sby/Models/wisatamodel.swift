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
}

struct wisata: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let alamat: String
    let jam: String
    let telp: String
    let url: String
    let category: Category.RawValue
    
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
               alamat: "Jalan Jagir Wonokromo Wetan Nomor10, Jagir, Wonokromo, Surabaya.",
               jam: "21.00 - habis",
               telp: "-",
               url: "https://goo.gl/maps/n5ccpELKSyQkDC2o7",
               category: "Food and Beverage",
               coordinates: Coordinates(latitude: -7.301117199693841,  longitude: 112.73801523948161)
               ),
        wisata(name: "Sate Klopo Ondomohen",
               image: "https://assets.grab.com/wp-content/uploads/sites/9/2019/06/01020722/Sate-Klopo-Makanan-alt-2-700x700.png",
               description: "Wisata kuliner legendaris Surabaya. Ini karena sate klopo ondomohen Ny. Asih sudah ada sejak 1945. Proses pembuatannya sedikit unik dibanding yang lainnya. Daging-daging untuk sate harus dilumuri terlebih dahulu dengan kelapa parut berbumbu (kacang, cabai rawit, dan irisan bawang merah), baru kemudian dibakar.",
               alamat: "Jalan Walikota Mustajab No 36, Ketabang, Kec. Genteng, Kota Surabaya",
               jam: "07.00 – 23.00",
               telp: "-",
               url: "-",
               category: "Food and Beverage",
               coordinates: Coordinates(latitude: -7.259926566788896, longitude: 112.74424595482397)),
        wisata(name: "Patung Suro dan Boyo",
               image: "https://d3hzxw6fwm263k.cloudfront.net/uploads/events/photos/1500532709-CP8w9AMTewXGx6PBVG1Rfwbp62SS8JMy.jpg?width=1200&quality=78",
               description: "Patung ini merupakan simbol dari kawasan berjuluk kota pahlawan ini. Nama kata Surabaya sendiri berasal dari dua hewan yakni Sura yang memiliki arti hiu dan baya yang berarti buaya. Konon hal itu dikaitkan dengan kisah perkelahian hidup dan mati antara Adipati Jayengrono yang menguasai ilmu buaya dan Sawunggaling yang menguasai ilmu sura.",
               alamat: "Jl. Diponegoro No.1-B, Darmo, Kec. Wonokromo, Kota Surabaya",
               jam: "24 jam",
               telp: "-",
               url: "-",
               category: "Monument",
               coordinates: Coordinates(latitude: -7.2958257133721025, longitude: 112.73864755297429)),
        wisata(name: "Monumen Tugu Pahlawan",
               image: "https://www.surabayarollcake.com/wp-content/uploads/2019/01/Monumen-Tugu-Pahlawan-Surabaya.jpg",
               description: "Monumen Tugu Pahlawan merupakan salah satu ikon bersejarah yang menjadi ciri khas kota Surabaya. Monumen Tugu Pahlawan dibangun untuk memperingati peristiwa Pertempuran 10 November 1945 di Surabaya, dimana arek-arek Suroboyo berjuang melawan pasukan sekutu dan Belanda yang hendak menjajah kembali Indonesia.",
               alamat: "Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota Surabaya",
               jam: "08.00 – 16.00",
               telp: "-",
               url: "-",
               category: "Monument",
               coordinates: Coordinates(latitude: -7.245648817904266, longitude: 112.73783915482389)),
        wisata(name: "Tunjungan Plaza",
               image: "https://awsimages.detik.net.id/community/media/visual/2022/04/14/penampakan-tunjungan-plaza-5-surabaya-terbakar-3_43.jpeg?w=700&q=90",
               description: "Tunjungan Plaza adalah sebuah pusat perbelanjaan terbesar kedua setelah Pakuwon Mall beserta PTC di Surabaya, sekaligus plaza yang paling populer di masyarakat kota Surabaya, yang didirikan pada tahun 1986, dan terakhir dibuka Tunjungan Plaza VI pada tahun 2017.",
               alamat: "Jl. Jenderal Basuki Rachmat No.8-12, Kedungdoro, Kec. Tegalsari, Kota Surabaya",
               jam: "10.00 – 22.00",
               telp: "-",
               url: "-",
               category: "Shopping",
               coordinates: Coordinates(latitude: -7.262102225528677, longitude: 112.7384430971526)),
        wisata(name: "Galaxy Mall",
               image: "https://images.squarespace-cdn.com/content/v1/5649db6ae4b08bab0a26acc4/1553496740912-3RTZAQAU8JSH93GTNHUP/CADIZ-GALAXY-MALL-3-05.jpg?format=2500w",
               description: "Mal ini didirikan pada tahun 1996. Mal ini terdiri dari 5 lantai dengan penyewa - penyewa yang sudah terkenal sebagai perusahaan besar baik skala nasional maupun internasional antara lain Centro, Timezone, J.CO Donuts & Coffee, Pizza Hut, KFC, HokBen, Burger King, Bakmi GM, 99 Ranch Market, The Gourmet, Toys City, Timezone, Cinema XXI, Sogo, H&M, Uniqlo, Mothercare, Keris Departement Store, Body & Soul, Charles & Keith, Crocs, Giordano, Max Fashions, Miniso, Planet Sports, Pull&Bear, Scoop, Stradivarius, Zara, Celebrity Fitness, Food Galaxy, Jade Imperial, X.O Suki, Noodle House & Kitchen, Bentoya, Pepper Lunch, Qua-Li, Doner Kebab, Excelso, Sour Sally, Sushi Tei, Pancious, Maison Feerie, Nona Manis, Steak 21, Tous Les Jours, Boncafe, Lincafe, Apollo Gadget Store, Erafone Megastore, Indosat Ooredoo, Samsung, Digimap dan masih banyak lagi.",
               alamat: "Jl. Dharmahusada No.35-37, Mulyorejo, Kec. Sukolilo, Kota Surabaya",
               jam: "10.00 – 22.00",
               telp: "-",
               url: "-",
               category: "Shopping",
               coordinates: Coordinates(latitude: -7.275473203236877, longitude: 112.78059321064553))
    ]
}
