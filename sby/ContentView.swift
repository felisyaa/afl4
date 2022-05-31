//
//  ContentView.swift
//  sby
//
//  Created by Felisya on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, Atallah!")
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 130.0)
            Text("Find a place where wh ")
                .multilineTextAlignment(.leading)
                .padding(.trailing, 110.0)
        Button(action:{
            
        }) {
            HStack{
                Text("d")
                
            VStack{
                Text("Tempat Wisata")
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
                    Text("Favorite")
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
                    Text("Setting")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
