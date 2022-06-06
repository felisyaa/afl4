//
//  setting.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct setting: View {
    var body: some View {
        NavigationView{
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct setting_Previews: PreviewProvider {
    static var previews: some View {
        setting()
    }
}
