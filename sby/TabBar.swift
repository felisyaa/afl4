//
//  TabBar.swift
//  sby
//
//  Created by Felisya on 05/06/22.
//

import SwiftUI

struct TabBar: View {
    @AppStorage("isDark") private var isDark = false
    var body: some View {
        TabView{
            category()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            tempat_wisata()
                .tabItem{
                    Label("Category", systemImage: "mappin.and.ellipse")
                }
//            favorite()
//                .tabItem{
//                    Label("Favorite", systemImage: "star")
//                }
//            food_beverage()
//                .tabItem{
//                    Label("Home", systemImage: "house")
//                }
            setting()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
            .environment(\.colorScheme, isDark ? .dark : .light)
            .preferredColorScheme(isDark ? .dark : .light)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
