//
//  WeatherModel.swift
//  Clima
//
//  Created by Рамина Ергалиева on 02.11.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
struct WeatherModel {
    //all stored properties cause they just store piece of data
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    
//to create computed property is always starts with "var" cause value always gonna change, then give it a name and give a data type and between curly braces i have to give an output that will be set as value of this property
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    
    //computed property of swift
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
            
                  }
    }
    
    
}
