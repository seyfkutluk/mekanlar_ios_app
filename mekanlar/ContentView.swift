//
//  ContentView.swift
//  mekanlar
//
//  Created by Seyfülmülük Kutluk on 6.03.2022.
//
// This is the code that shows inside the app
// SwiftUI is a source code that let us usse built in features(text, shapes, etc).
 
import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()    //this lets to modify the view
                .scaledToFit()
                .padding(.horizontal)
            
            Text(location.name)
                .font(.largeTitle)  //font to large largeTitle
                .bold()
                .multilineTextAlignment(.center)    // if we excees  one line it will line text in the center
            Text(location.country)
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)    // Adds little bit of transaprency
            
            Text(location.description)
                .padding(.horizontal)
            //
            Text("Interesting information")
                .bold()
                .padding(.top)  //add padding horizantally
                .font(.title3)
            Text(location.more )
                .padding(.horizontal)   //add padding horizantally
            
        }
        .navigationTitle("Mekanlar")
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
.previewInterfaceOrientation(.portrait)
    }
}
