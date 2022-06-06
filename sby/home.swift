//
//  home.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import SwiftUI

struct home: View {
    var body: some View {
        NavigationView{
                Text("home")
                .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
        
//        ZStack{
//            Color("backColor")
//                .ignoresSafeArea()
//            VStack{
//                HStack{
//                    Text("Hello, Atallah!")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.leading)
//                        .padding(.trailing, 30.0)
//                    Image("p")
//                        .resizable()
//                        .scaledToFit()
//                        .clipShape(Circle())
//                        .frame(width: 90, height: 135)
//                }
//                Text("Find a place where wh ")
//                    .foregroundColor(Color.white)
//                    .multilineTextAlignment(.leading)
//                    .padding(.trailing, 120.0)
//                    .offset(y:-55)
//
//            Button(action:{
//
//            }) {
//                HStack{
//                    Text("d")
//
//                VStack{
//                    Text("Tempat Wisata")
//                        .font(.title2)
//                    Text("tourist atraction in Surabaya")
//                        .font(.caption)
//                        .fontWeight(.thin)
//                    }
//                }
//                    .padding(.horizontal,60)
//                    .padding(.vertical, 20)
//                    .foregroundColor(.white)
//                    .background(Color.gray)
//                    .cornerRadius(20)
//
//            }
//                Button(action:{
//
//                }) {
//                    VStack{
//                        Text("Favorite")
//                            .font(.title2)
//                        Text("tourist atraction in Surabaya")
//                            .font(.caption)
//                            .fontWeight(.thin)
//                    }
//
//                        .padding(.horizontal,70)
//                        .padding(.vertical, 20)
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//                        .cornerRadius(20)
//
//                }
//                Button(action:{
//
//                }) {
//                    VStack{
//                        Text("Setting")
//                            .font(.title2)
//                        Text("tourist atraction in Surabaya")
//                            .font(.caption)
//                            .fontWeight(.thin)
//                    }
//
//                        .padding(.horizontal,70)
//                        .padding(.vertical, 20)
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//                        .cornerRadius(20)
//                }
//            }
//            .offset(y: -60)
//        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

