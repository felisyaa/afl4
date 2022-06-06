//
//  mapview.swift
//  sby
//
//  Created by Felisya on 06/06/22.
//

import SwiftUI
import MapKit

struct mapview: View {
    var coordinate: CLLocationCoordinate2D
    //var wisata: wisata

    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .near

    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"

        var id: Zoom {
            return self
        }
    }

    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.004
        case .medium: return 0.02
        case .far: return 0.2
        }
    }

    var body: some View {
        Map(coordinateRegion: .constant(region))
    }

    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        mapview(coordinate: CLLocationCoordinate2D(latitude: -7.275473203236877, longitude: 112.78059321064553))
    }
}
