//
//  HourlyWeather.swift
//  Weather
//
//  Created by Ahmet Kilinc on 01/07/2020.
//

import SwiftUI
import Combine

class HourlyWeather: Identifiable {
    let id: Int?
    let hour: String?
    let image: Image?
    let temp: Int?
    
    init(id: Int, hour: String, image: Image, temp: Int) {
        self.id = id
        self.hour = hour
        self.image = image
        self.temp = temp
    }
}
