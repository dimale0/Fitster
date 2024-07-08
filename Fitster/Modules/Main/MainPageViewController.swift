//
//  MainPageViewController.swift
//  Fitster
//
//  Created by Тимур Салахиев on 07.07.2024.
//

import UIKit

class MainPageViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    var dayCalories = 0
    var takenCaloriesString = ""
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var statisticsLabel: UILabel!
    
    enum Option: String {
        case massGain = "Набор веса"
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
        static let takenCalories = "takenCalories"
    }
    
    override func viewDidLoad() {
        //UserDefaults.standard.removeObject(forKey: "isAllDataSaved")
        super.viewDidLoad()
        
        if defaults.value(forKey: UserDefaultsKeys.isAllDataSaved) == nil {
            print(defaults.value(forKey: UserDefaultsKeys.isAllDataSaved) as Any)
            performSegue(withIdentifier: "goToInputParameters", sender: nil)
            return
        }
        
        heightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedHeight)
        weightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedWeight)
        optionLabel.text = defaults.string(forKey: UserDefaultsKeys.selectedOption)
                
        takenCaloriesString = defaults.string(forKey: UserDefaultsKeys.takenCalories)!
        
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
        caloriesLabel.text = "\(dayCalories) ккал"
        statisticsLabel.text = "\(takenCaloriesString) из \(dayCalories)"

    }
    
    private func calculateCalories(
        option: Option,
        height: Double,
        weight: Double,
        age: Double,
        sex: String
    ) -> Int {
        let isMale = sex == "male"
        var bmr: Double
        
        if isMale {
            bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age)
        } else {
            bmr = 655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age)
        }
        
        switch option {
        case .massGain:
            bmr *= 1.8
        case .weightMaintenance:
            bmr *= 1.3
        case .weightLoss:
            bmr *= 0.85
        }
        return Int(round(bmr))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        heightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedHeight)
        weightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedWeight)
        optionLabel.text = defaults.string(forKey: UserDefaultsKeys.selectedOption)
        caloriesLabel.text = "\(dayCalories) ккал"
        //statisticsLabel.text = "\(takenCaloriesString) из \(dayCalories)"
    }
}

