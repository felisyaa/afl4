//
//  setting.swift
//  sby
//
//  Created by Felisya on 30/05/22.
//

import SwiftUI

struct setting: View {
    @AppStorage("isDark") private var isDark = false
    var body: some View {
        NavigationView{
            VStack{
                Picker("Mode", selection: $isDark) {
                    Text("Light")
                        .tag(false)
                    Text("Dark")
                        .tag(true)
                            }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                        Spacer()
                Text("v1.0.0")
                    .foregroundColor(.brown)
                    .navigationTitle("Settings")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct setting_Previews: PreviewProvider {
    static var previews: some View {
        setting()
    }
}
