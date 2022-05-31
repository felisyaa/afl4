//
//  food beverage.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct food_beverage: View {
    var body: some View {
        ScrollView{
            Spacer()
            Text("Food & Beverage")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal,0)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Mau makan apa?")
                .padding(.horizontal,0)
                .frame(maxWidth: .infinity, alignment: .leading)
            feature(image: Image("cing"))
            Divider()
            Text("Featured")
                .fontWeight(.bold)
                .padding(.horizontal, 0)
                .frame(maxWidth: .infinity, alignment: .leading)
            category(image: Image("cing"))
        }
        .padding()
    }
}

struct food_beverage_Previews: PreviewProvider {
    static var previews: some View {
        food_beverage()
    }
}
