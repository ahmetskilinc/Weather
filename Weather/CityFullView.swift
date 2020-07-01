//
//  CityFullView.swift
//  Weather
//
//  Created by Ahmet Kilinc on 01/07/2020.
//

import SwiftUI
import MapKit

struct CityFullView: View {
    var city: City
    var hourlyWeather: [HourlyWeather] = [
        HourlyWeather(
            id: 1, hour: "15:00", image: Image(systemName: "cloud.sun.bolt.fill"), temp: 12
        ),
        HourlyWeather(
            id: 2, hour: "16:00", image: Image(systemName: "cloud.sun.bolt.fill"), temp: 12
        ),
        HourlyWeather(
            id: 3, hour: "17:00", image: Image(systemName: "cloud.rain.fill"), temp: 15
        ),
        HourlyWeather(
            id: 4, hour: "18:00", image: Image(systemName: "cloud.sun.fill"), temp: 17
        ),
        HourlyWeather(
            id: 5, hour: "19:00", image: Image(systemName: "sun.max.fill"), temp: 22
        ),
        HourlyWeather(
            id: 6, hour: "20:00", image: Image(systemName: "cloud.sun.fill"), temp: 17
        ),
        HourlyWeather(
            id: 7, hour: "21:00", image: Image(systemName: "cloud.sun.fill"), temp: 17
        ),
        HourlyWeather(
            id: 8, hour: "22:00", image: Image(systemName: "cloud.sun.fill"), temp: 17
        ),
        HourlyWeather(
            id: 9, hour: "23:00", image: Image(systemName: "cloud.sun.fill"), temp: 17
        )
    ]
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .foregroundColor(Color("WeatherIconBG"))
                            .frame(width:60, height: 60)
                        city.image!
                            .renderingMode(.original)
                            .font(.system(size: 40))
                    }
                    Text("\(city.weather!)°C")
                        .font(.system(size: 42))
                        .fontWeight(.medium)
                }
                Spacer()
            }
            .padding(.top, 24)
            .padding(.bottom, 0)
            MapView()
                .frame(height: 132)
                .frame(maxWidth: .infinity)
                .cornerRadius(6)
                .padding([.leading, .bottom, .trailing], 10)
            Divider()
            Text("Hourly View")
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(hourlyWeather, id: \.self.id) { hour in
                        VStack(spacing: 16) {
                            Text(hour.hour!)
                                .font(.footnote)
                            ZStack {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .frame(width: 52, height: 52)
                                    .foregroundColor(Color("WeatherIconBG"))
                                hour.image!
                                    .renderingMode(.original)
                                    .font(.title)
                            }
                            Text("\(hour.temp!)°C")
                                .font(.headline)
                                .fontWeight(.regular)
                        }
                    }
                }
                .padding([.trailing, .leading])
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .padding(.bottom)
            Divider()
        }
        .navigationBarTitle(Text(city.name!), displayMode: .inline)
    }
}

struct CityFullView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CityFullView(city: City(id: 1, name: "London", longitude: 1, latitude: 1, weather: 32, image: Image(systemName: "cloud.heavyrain.fill")))
        }
            .preferredColorScheme(.light)
    }
}
