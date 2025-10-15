//
//  DailyWeatherView.swift
//  WeatherApp
//
//  Created by Shivam Beohar on 14/10/25.
//

import SwiftUI

struct DailyWeatherView: View {
    let dayOfWeek: String
    let imageName: String
    let temperature: String
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(temperature)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}


#Preview {
    DailyWeatherView(
        dayOfWeek: "TUE",
        imageName: "cloud.sun.rain.fill",
        temperature: "25°C"
    )
}
