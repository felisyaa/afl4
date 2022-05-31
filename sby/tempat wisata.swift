//
//  tempat wisata.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct tempat_wisata: View {
    var body: some View {
        ZStack{
            Color("backColor")
                .ignoresSafeArea()
            VStack{
                Text("Tempat Wisata")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 110.0)
                    .foregroundColor(.white)
                Text("Find a place where wh ")
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 110.0)
                    .foregroundColor(.white)
            Button(action:{
                //NavigationLink(destination: food_beverage())
            }) {
                HStack{
                    Text("")
                VStack{
                    Text("Food and Beverage")
                        .font(.title2)
                    Text("tourist atraction in Surabaya")
                        .font(.caption)
                        .fontWeight(.thin)
                    }
                }
                    .padding(.horizontal,60)
                    .padding(.vertical, 20)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(20)
                    
            }
                Button(action:{
                    
                }) {
                    VStack{
                        Text("Shopping")
                            .font(.title2)
                        Text("tourist atraction in Surabaya")
                            .font(.caption)
                            .fontWeight(.thin)
                    }
                        .padding(.horizontal,70)
                        .padding(.vertical, 20)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(20)
                        
                }
                Button(action:{
                    
                }) {
                    VStack{
                        Text("Monument")
                            .font(.title2)
                        Text("tourist atraction in Surabaya")
                            .font(.caption)
                            .fontWeight(.thin)
                    }
                    
                        .padding(.horizontal,70)
                        .padding(.vertical, 20)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(20)
                }
            }

        }
    }
}


struct tempat_wisata_Previews: PreviewProvider {
    static var previews: some View {
        tempat_wisata()
    }
}
