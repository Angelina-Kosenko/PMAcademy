//
//  WeatherData.swift
//  WeatherData
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import Foundation

struct Result: Codable {
    let lat: Double
    let lon: Double
    let timezone: String
    let current: Current
    var daily: [Daily]
}

struct Current: Codable{
    let temp: Double
    let feels_like: Double
    let pressure: Int
    let humidity: Int
    let clouds: Int
    let wind_speed: Double
    let wind_deg: Int
    let weather: [Weather]
}

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Daily: Codable {
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let temp: Temperature
    let feels_like: Feels_Like
    let pressure: Int
    let humidity: Int
    let dew_point: Double
    let wind_speed: Double
    let wind_deg: Int
    let weather: [Weather]
    let clouds: Int
    let uvi: Double
}

struct Temperature: Codable {
    let day: Double
    let min: Double
    let max: Double
    let night: Double
    let eve: Double
    let morn: Double
}

struct Feels_Like: Codable {
    let day: Double
    let night: Double
    let eve: Double
    let morn: Double
}
