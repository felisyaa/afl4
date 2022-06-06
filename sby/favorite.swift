//
//  favorite.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct favorite: View {
    var body: some View {
        NavigationView{
            Text("Kamu belum menambahkan favorite")
                .foregroundColor(.brown)
                .navigationTitle("Favorite Place")
        }
        .navigationViewStyle(.stack)
//        VStack{
//        Text("Favorite Place")
//            .font(.title)
//            .fontWeight(.bold)
//            .padding(.horizontal,20)
//            .frame(maxWidth: .infinity, alignment: .leading)
//        Text("Mau makan apa?")
//            .padding(.horizontal,20)
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],spacing: 15) {
//                        ForEach(feature){ Destination in
//                            NavigationLink(destination: DestinationView(destination: Destination)){
//                                DestinationCard(destination: Destination)
//                            }
        
    }
}

struct favorite_Previews: PreviewProvider {
    static var previews: some View {
        favorite()
    }
}
