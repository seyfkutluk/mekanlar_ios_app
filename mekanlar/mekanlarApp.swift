//
//  mekanlarApp.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 6.03.2022.
//
// This the code that first start the app

import SwiftUI

@main
struct mekanlarApp: App {
    @StateObject var locations = Locations()    //@StateObject because it's a class if it was anything else it will be State its used to keep it alive it requires to use of ObservableObject
    var body: some Scene {
        WindowGroup {
            TabView() { // Creates a tab in the buttom of the screen
                NavigationView() {  // NavigationView lets you to not overlock the clock
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "car.circle")
                    Text("Keşfet")
                }
                
                NavigationView() {
                    map()
                }
                .tabItem() {
                    Image(systemName: "car.circle")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
        }
    }
}
