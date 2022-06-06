//
//  tempat wisata.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct tempat_wisata: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(Category.allCases){ Category in
                    NavigationLink{
                        catview(category: Category)
                    }label:{
                        Text(Category.rawValue + "s")
                            .foregroundColor(.brown)
                    }
                }
            }
            .navigationTitle("Tempat Wisata")
            
        }
        .navigationViewStyle(.stack)
        
//        ZStack{
//            Color("backColor")
//                .ignoresSafeArea()
////            VStack{
////                Text("Tempat Wisata")
////                    .font(.title)
////                    .fontWeight(.bold)
////                    .multilineTextAlignment(.leading)
////                    .padding(.trailing, 110.0)
////                    .foregroundColor(.white)
////                Text("Find a place where wh ")
////                    .multilineTextAlignment(.leading)
////                    .padding(.trailing, 110.0)
////                    .foregroundColor(.white)
//            Button(action:{
//                //NavigationLink(destination: food_beverage())
//            })
//                {
//                HStack{
//                    Image(systemName: "sparkles")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                VStack{
//                    Text("Food and Beverage")
//                        .font(.title2)
//                    Text("tourist atraction in Surabaya")
//                        .font(.caption)
//                        .fontWeight(.thin)
//                    }
//                }
//                    .padding(.horizontal,45)
//                    .padding(.vertical, 20)
//                    .foregroundColor(.white)
//                    .background(Color.gray)
//                    .cornerRadius(20)
//
//            }
//                Button(action:{
//
//                }) {
//                    HStack{
//                        Image(systemName: "cart")
//                            .font(.largeTitle)
//                            .foregroundColor(.red)
//                    VStack{
//                        Text("Shopping")
//                            .font(.title2)
//                        Text("tourist atraction in Surabaya")
//                            .font(.caption)
//                            .fontWeight(.thin)
//                    }
//                    }
//                        .padding(.horizontal,50)
//                        .padding(.vertical, 20)
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//                        .cornerRadius(20)
//
//                }
//                Button(action:{
//
//                }) {
//                    HStack{
//                        Image(systemName: "mappin.and.ellipse")
//                            .font(.largeTitle)
//                            .foregroundColor(.yellow)
//                    VStack{
//                        Text("Monument")
//                            .font(.title2)
//                        Text("tourist atraction in Surabaya")
//                            .font(.caption)
//                            .fontWeight(.thin)
//                    }
//                    }
//
//                        .padding(.horizontal,55)
//                        .padding(.vertical, 20)
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//                        .cornerRadius(20)
//                }
//            }
//            .offset(y: -60)
        
    }
}


struct tempat_wisata_Previews: PreviewProvider {
    static var previews: some View {
        tempat_wisata()
    }
}
