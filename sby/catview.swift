//
//  catview.swift
//  sby
//
//  Created by Felisya on 06/06/22.
//

import SwiftUI

struct catview: View {
    var category: Category
    var wisataa: [wisata]{
        return wisata.all.filter{ $0.category == category.rawValue}
    }
    var body: some View {
        ScrollView{
            list(wisata: wisataa)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct catview_Previews: PreviewProvider {
    static var previews: some View {
        catview(category: Category.fb)
    }
}
