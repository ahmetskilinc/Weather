//
//  ContentView.swift
//  Weather
//
//  Created by Ahmet Kilinc on 30/06/2020.
//

import SwiftUI
import MapKit

struct ContentView: View {
    let cities: [City] = [
        City (
            id: 1,
            name: "London",
            longitude: -0.118092,
            latitude: 51.509865,
            weather: 12,
            image: Image(systemName: "cloud.heavyrain.fill")
        ),
        City (
            id: 2,
            name: "Aksaray",
            longitude: -0.118092,
            latitude: 51.509865,
            weather: 33,
            image: Image(systemName: "sun.max.fill")
        ),
        City (
            id: 3,
            name: "New York",
            longitude: -0.118092,
            latitude: 51.509865,
            weather: 10,
            image: Image(systemName: "cloud.bolt.rain.fill")
        )
    ]
    @State var isPresentingModal: Bool = false
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(cities, id: \.self.id) { city in
                        CityRow(city: city)
                    }
                }
            }
            .navigationBarItems(leading: editButton, trailing: addButton)
            .navigationTitle(Text("Your Cities"))
        }
    }
    
    private var addButton: some View {
        Button(action: {
            self.isPresentingModal = true
        }) {
            Image(systemName: "plus.circle.fill")
            .font(.title)
        }.sheet(isPresented: $isPresentingModal) {
            NewCityView()
        }
    }
    
    private var editButton: some View {
        Button(action: {
//            self.isPresentingModal = true
        }) {
            Text("Edit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
