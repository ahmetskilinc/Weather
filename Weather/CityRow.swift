//
//  CityRow.swift
//  Weather
//
//  Created by Ahmet Kilinc on 30/06/2020.
//

import SwiftUI

struct CityRow: View {
    var city: City
    var body: some View {
        NavigationLink(destination: CityFullView(city: city)) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .frame(width: 40)
                        .frame(maxHeight: .infinity)
                        .foregroundColor(Color("WeatherIconBG"))
                        
                    city.image!
                        .renderingMode(.original)
                        .font(.title)
//                        .padding(.all, 6)
                }
                Spacer()
                    .frame(width: 14)
                Text(city.name!)
                    .lineLimit(nil)
                    .font(.title)
                Spacer()
                Text("\(city.weather!)°C")
                    .foregroundColor(.gray)
                    .font(.title)
            }
        }
        .padding([.top, .bottom])
        .frame(height: 72)
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(city: City(id: 1, name: "London", longitude: 1, latitude: 1, weather: 32, image: Image(systemName: "cloud.heavyrain.fill")))
        .preferredColorScheme(.light)
    }
}
