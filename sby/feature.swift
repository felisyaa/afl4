//
//  feature.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct feature: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(4/3, contentMode: .fit)
            .overlay{
                overlays()
            }
            .cornerRadius(35)
    }
}

struct overlays: View{
    var gradient: LinearGradient{
        .linearGradient(Gradient(colors:[ .black.opacity(0.5), .black.opacity(0)]), startPoint: .bottom, endPoint: .topLeading)
    }
    var body: some View{
        ZStack(alignment: .bottomLeading){
            gradient
            VStack(alignment: .leading){
                Text("Bakmi Trunojoyo")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Jl. jalan aja")
                    .foregroundColor(Color.white)
                    
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 20)
        }
    }
}

struct feature_Previews: PreviewProvider {
    static var previews: some View {
        feature(image: Image("cing"))
            .previewLayout(.fixed(width: 300, height: 400))
    }
}
