//
//  feature.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct feature: View {
    //var image: Image
    var wisata: wisata
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: wisata.image)) {
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom){
                        Text(wisata.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: 170)
                            .padding()
                    }
            }placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.gray.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom){
                        Text(wisata.name)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: 170)
                            .padding()
                    }
            }
        }
        .frame(width: 160, height: 210, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors:[ .black.opacity(0.5), .black.opacity(0)]), startPoint: .bottom, endPoint: .topLeading))
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        .shadow(color: Color.black.opacity(0.4), radius: 15, x: 10, y: 20)
//        image
//            .resizable()
//            .aspectRatio(4/3, contentMode: .fit)
//            .overlay{
//                overlays()
//            }
//            .cornerRadius(35)
//    }
//}
//
//struct overlays: View{
//    var gradient: LinearGradient{
//        .linearGradient(Gradient(colors:[ .black.opacity(0.5), .black.opacity(0)]), startPoint: .bottom, endPoint: .topLeading)
//    }
//    var body: some View{
//        ZStack(alignment: .bottomLeading){
//            gradient
//            VStack(alignment: .leading){
//                Text("Bakmi Trunojoyo")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.white)
//                Text("Jl. jalan aja")
//                    .foregroundColor(Color.white)
//                    
//            }
//            .padding(.horizontal, 25)
//            .padding(.bottom, 20)
//        }
    }
}

struct feature_Previews: PreviewProvider {
    static var previews: some View {
        feature(wisata: wisata.all[0])
    }
}
