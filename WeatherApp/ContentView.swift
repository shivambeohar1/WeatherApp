//
//  ContentView.swift
//  WeatherApp
//
//  Created by Shivam Beohar on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var isNightMode: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(
                colors: isNightMode ? [Color.black, Color.gray] : [Color.blue, Color.white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Pune, India")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: isNightMode ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                    Text(isNightMode ? "12°C" : "25°C")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundStyle(.white)
                        .padding(.bottom, 40)
                }
                HStack(spacing: 20) {
                    DailyWeatherView(
                        dayOfWeek: "TUE",
                        imageName: "wind.snow",
                        temperature: "10°C"
                    )
                    DailyWeatherView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: "15°C"
                    )
                    DailyWeatherView(
                        dayOfWeek: "THU",
                        imageName: "cloud.drizzle.fill",
                        temperature: "14°C"
                    )
                    DailyWeatherView(
                        dayOfWeek: "FRI",
                        imageName: "sun.rain.fill",
                        temperature: "14°C"
                    )
                    DailyWeatherView(
                        dayOfWeek: "SAT",
                        imageName: "sunrise.fill",
                        temperature: "14°C"
                    )
                }.padding(.bottom, 70)
                
                Button("Change Time of Day") {
                    isNightMode = !isNightMode
                }.font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundStyle(.blue)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 15)
                    .background(.white)
                    .clipShape(Capsule())
                Spacer()
            }
        }
    }
}



#Preview {
    ContentView()
}
