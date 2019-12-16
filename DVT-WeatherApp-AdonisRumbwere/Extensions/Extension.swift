//
//  Extension.swift
//  DVT-WeatherApp-AdonisRumbwere
//
//  Created by adonis rumbwere on 16/12/2019.
//  Copyright © 2019 Adonis Rumbwere. All rights reserved.
//

import Foundation


// MARK: - Rounds the double to decimal places value
extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

// MARK: - Date Extension to covert date to a day in String type.
extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
