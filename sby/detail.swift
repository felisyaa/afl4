//
//  detail.swift
//  sby
//
//  Created by Felisya on 06/06/22.
//

import SwiftUI

struct detail: View {
    var wisata: wisata
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: wisata.image)) {
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.gray.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors:[ .black.opacity(0.5), .black.opacity(0)]), startPoint: .bottom, endPoint: .topLeading))
            
            VStack(spacing: 30){
                Text(wisata.name)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .shadow(color: .gray, radius: 2, x: 1, y: 0)
                VStack(alignment: .leading, spacing: 40){
                    Text(wisata.description)
                    
                    VStack(alignment: .leading, spacing: 20){
                        HStack{
                            Text("Alamat     :")
                                .bold()
                            Text(wisata.alamat)
                        }
                        HStack{
                            Text("Jam Buka:")
                                .bold()
                            Text(wisata.jam)
                        }
                        HStack{
                            Text("Telp            :")
                                .bold()
                            Text(wisata.telp)
                        }
                        mapview(coordinate: wisata.locationCoordinate)
                            .scaledToFit()
                    }
//                    .frame(width: .infinity, alignment: .leading)
                }
                .padding(16)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct detail_Previews: PreviewProvider {
    static var previews: some View {
        detail(wisata: wisata.all[0])
    }
}
