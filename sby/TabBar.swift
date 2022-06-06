//
//  TabBar.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            tempat_wisata()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
//            tempat_wisata()
//                .tabItem{
//                    Label("Category", systemImage: "mappin.and.ellipse")
//                }
            favorite()
                .tabItem{
                    Label("Favorite", systemImage: "star")
                }
//            food_beverage()
//                .tabItem{
//                    Label("Home", systemImage: "house")
//                }
            setting()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
