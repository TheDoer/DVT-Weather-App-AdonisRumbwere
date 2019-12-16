//
//  ForecastCell.swift
//  DVT-WeatherApp-AdonisRumbwere
//
//  Created by adonis rumbwere on 16/12/2019.
//  Copyright © 2019 Adonis Rumbwere. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {
    
    // Outlets
    
    
    @IBOutlet weak var forecastTemp: UILabel!
    @IBOutlet weak var forecastDay: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Function to configure the cell
    ///
    /// - Parameter forecastData: Data of Type ForecastWeather class
    func configureCell(forecastData: ForecastWeather) {
        self.forecastDay.text = "\(forecastData.date)"
        self.forecastTemp.text = "\(Int(forecastData.temp))"
        
    }
    
    
    

}
