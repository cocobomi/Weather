//
//  WeatherInformation.swift
//  Weather
//
//  Created by donghyeon on 2022/02/05.
//

import Foundation

//codable은 자신을 변환하거나 외부 표현으로 변환할 수 있는 타입을 의미, 여기서 외부 표현이란 JSON과 같은 타입을 의미함(즉, codable을 채택하면 WeatherInformation 객체를 JSON형태로 만들수 있고, JSON형태를 WeatherInformation 객체로 만들 수 있다)
struct WeatherInformation: Codable {
    let weather: [Weather]
    let temp: Temp
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case weather
        case temp = "main"
        case name
    }
}


struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}


struct Temp: Codable {
    let temp: Double
    let feelsLike: Double
    let minTemp: Double
    let maxTemp: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
    }
}
