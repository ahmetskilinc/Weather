//
//  NewCityView.swift
//  Weather
//
//  Created by Ahmet Kilinc on 30/06/2020.
//

import SwiftUI

struct NewCityView : View {
    var cities: [String] = [
        "London",
        "Paris",
        "Tokyo",
        "Ankara",
        "Los Angeles"
    ]
    
    @State private var search: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBar(text: $search)
                List {
                    ForEach(self.cities.filter {
                        self.search.isEmpty ? true : $0.contains(self.search)
                    }, id: \.self) { city in
                        Button(action: {
                            print("adding: " + city)
//                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text(city)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Add City"), displayMode: .inline)
            .navigationBarItems(leading: cancelButton)
        }
    }
    
    private var cancelButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Cancel")
        }
    }
}

struct NewCityView_Previews: PreviewProvider {
    static var previews: some View {
        NewCityView()
    }
}
