//
//  category.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct category: View {
    var body: some View {
        NavigationView{
            ScrollView{
            list(wisata: wisata.all)
            }
            .navigationTitle("Tempat Wisata")
            }
        .navigationViewStyle(.stack)
//        ZStack{
//            Color("")
//            HStack{
//                image
//                    .resizable()
//                    .scaledToFit()
//                    .aspectRatio(5/3, contentMode: .fit)
//                    .cornerRadius(15)
//                VStack{
//                    Text("Bakmi Trunojoyo")
//                        .fontWeight(.bold)
//                        .padding(.bottom, 20)
//                        .offset(x:10)
//                    Text("Jl. jalan ke kota")
//                        .offset(y:-15)
//                }
//                Spacer()
//            }
//        }
    }
}

struct category_Previews: PreviewProvider {
    static var previews: some View {
        category()
            
    }
}
