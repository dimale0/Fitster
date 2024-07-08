//
//  MainPageViewController.swift
//  Fitster
//
//  Created by Тимур Салахиев on 07.07.2024.
//

import UIKit

class MainPageViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    var dayCalories = 0.0
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    
    enum Option: String {
        case massGain = "Набор массы"
        case weightMaintenance = "Поддержание веса"
        case weightLoss = "Уменьшение веса"
    }
    
    struct UserDefaultsKeys {
        static let savedHeight = "savedHeight"
        static let savedWeight = "savedWeight"
        static let savedAge = "savedAge"
        static let selectedOption = "selectedOption"
        static let savedSex = "savedSex"
        static let isAllDataSaved = "isAllDataSaved"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if defaults.value(forKey: UserDefaultsKeys.isAllDataSaved) == nil {
            print(defaults.value(forKey: UserDefaultsKeys.isAllDataSaved) as Any)
            performSegue(withIdentifier: "goToInputParameters", sender: nil)
            return
        }
        
        heightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedHeight)
        weightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedWeight)
        optionLabel.text = defaults.string(forKey: UserDefaultsKeys.selectedOption)
        
        guard let optionString = defaults.string(forKey: UserDefaultsKeys.selectedOption),
              let option = Option(rawValue: optionString),
              let heightString = defaults.string(forKey: UserDefaultsKeys.savedHeight),
              let weightString = defaults.string(forKey: UserDefaultsKeys.savedWeight),
              let ageString = defaults.string(forKey: UserDefaultsKeys.savedAge),
              let sex = defaults.string(forKey: UserDefaultsKeys.savedSex),
              let height = Double(heightString),
              let weight = Double(weightString),
              let age = Double(ageString) 
        else {
            return
        }
        
        dayCalories = calculateCalories(
            option: option, 
            height: height,
            weight: weight,
            age: age,
            sex: sex
        )
    }
    
    private func calculateCalories(
        option: Option,
        height: Double,
        weight: Double,
        age: Double,
        sex: String
    ) -> Double {
        let isMale = sex == "male"
        var bmr: Double
        
        if isMale {
            bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age)
        } else {
            bmr = 655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age)
        }
        
        switch option {
        case .massGain:
            return bmr * 1.6
        case .weightMaintenance:
            return bmr * 1.3
        case .weightLoss:
            return bmr * 0.85
        }
    }
}

