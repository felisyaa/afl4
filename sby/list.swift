//
//  list.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import SwiftUI

struct list: View {
    @State var searchText = ""
    @State var sear = false
    var wisata: [wisata]
    var body: some View {
        VStack{
            HStack{
                TextField("Search", text: $searchText)
                    .padding(.leading,20)
            }
            .padding()
            .padding(.horizontal)
            .background(Color(.systemGray4))
            .cornerRadius(10)
            .onTapGesture {
                sear = true
            }
            .overlay(
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    Spacer()
                    if sear{
                        Button(action: {searchText = ""}, label: {Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)})
                    }
                }.padding(.horizontal, 20)
            )
            ForEach(wisata.filter({ "\($0)".contains(searchText) || searchText.isEmpty }), id: \.self){ num in
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
