//
//  list.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import SwiftUI

struct list: View {
    var wisata: [wisata]
    var body: some View {
        VStack{
            HStack{
            Text("\(wisata.count) \(wisata.count > 1 ? "wisata": "wisata ")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
            Spacer()
        }
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
            ForEach(wisata) { wisata in
                NavigationLink(destination: detail(wisata: wisata)){
                    feature(wisata: wisata)
                }
            }
            }
        .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct list_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
        list(wisata: wisata.all)
        }
    }
}
