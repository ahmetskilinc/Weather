//
//  City.swift
//  Weather
//
//  Created by Ahmet Kilinc on 30/06/2020.
//

import SwiftUI
import Combine

class City: Identifiable {
    let id: Int?
    let name: String?
    let longitude: Double?
    let latitude: Double?
    let weather: Int?
    let image: Image?
    
    init(id: Int, name: String, longitude: Double, latitude: Double, weather: Int, image: Image) {
        self.id = id
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
        self.image = image
        self.weather = weather
    }
}
