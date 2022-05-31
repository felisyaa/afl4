//
//  favorite.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct favorite: View {
    var body: some View {
        VStack{
        Text("Favorite Place")
            .font(.title)
            .fontWeight(.bold)
            .padding(.horizontal,20)
            .frame(maxWidth: .infinity, alignment: .leading)
        Text("Mau makan apa?")
            .padding(.horizontal,20)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct favorite_Previews: PreviewProvider {
    static var previews: some View {
        favorite()
    }
}
