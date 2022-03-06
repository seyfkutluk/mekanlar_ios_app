//
//  map.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 7.03.2022.
//

import MapKit   // The map features are stored in MapKit
import SwiftUI

struct map: View {
    @EnvironmentObject var locations : Locations
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.015137, longitude: 28.979530), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)) // @State is property wrapper keep this file alive this is important for me
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                NavigationLink(destination: ContentView(location: location)) {  // to make map images tapable
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        } // $ shows it can be readed and writed
            .navigationTitle("Locations")
    }
}

struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}
