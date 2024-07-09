//
//  MainPageViewController.swift
//  Fitster
//
//  Created by Тимур Салахиев on 07.07.2024.
//

import UIKit

class MainPageViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    let flag = UserDefaults.standard.bool(forKey: "isAllDataSaved")
    
    var dayCalories = 0
    var takenCalories = ""
    
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
        static let dayCalories = "dayCalories"
    }
    
    override func viewDidLoad() {
//        UserDefaults.standard.removeObject(forKey: "savedHeight")
//        UserDefaults.standard.removeObject(forKey: "savedWeight")
//        UserDefaults.standard.removeObject(forKey: "savedAge")
//        UserDefaults.standard.removeObject(forKey: "selectedOption")
//        UserDefaults.standard.removeObject(forKey: "savedSex")
//        UserDefaults.standard.removeObject(forKey: "isAllDataSaved")

        super.viewDidLoad()
    }
    
    //MARK: - этот метод вызывается ПОСЛЕ того, как ViewController появляется на экране. Раннее ты пытался вызвать переход в момент, когда экран еще не появился. 

    
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
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if UserDefaults.standard.bool(forKey: "isAllDataSaved") != true {
            performSegue(withIdentifier: "goToInputParameters", sender: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("vWA is working...")

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
            print("returning nil")
            return
        }
        
        print("vWA is still working...")
        
        dayCalories = calculateCalories(
            option: option,
            height: height,
            weight: weight,
            age: age,
            sex: sex
        )
        
        takenCalories = defaults.string(forKey: UserDefaultsKeys.takenCalories)!
        defaults.set(dayCalories, forKey: UserDefaultsKeys.dayCalories)
        
        print("before setting labels")
        
        heightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedHeight)
        weightLabel.text = defaults.string(forKey: UserDefaultsKeys.savedWeight)
        optionLabel.text = defaults.string(forKey: UserDefaultsKeys.selectedOption)
        caloriesLabel.text = defaults.string(forKey: UserDefaultsKeys.dayCalories)
        statisticsLabel.text = "\(takenCalories) из \(dayCalories)"
        
        print("after setting labels")

        
    }
    
        let currentDate: Date
        var timer: Timer
        let calendar = Calendar.current

        // Добавляем инициализатор init(coder:)
        required init?(coder aDecoder: NSCoder) {
            self.currentDate = Date()
            self.timer = Timer()
            super.init(coder: aDecoder)
        }

        init() {
            self.currentDate = Date()
            self.timer = Timer()
            let dateComponents = calendar.dateComponents([.year, .month, .day], from: currentDate)

            super.init(nibName: nil, bundle: nil)

            if let nextDay = calendar.date(byAdding: .day, value: 1, to: calendar.date(from: dateComponents)!) {
                self.timer = Timer(fireAt: nextDay, interval: 0, target: self, selector: #selector(newDayAction), userInfo: nil, repeats: false)
                RunLoop.main.add(timer, forMode: .common)
            } else {
                fatalError("Unable to calculate next day")
            }
        }

        @objc func newDayAction() {
            defaults.set(0, forKey: "takenCalories")
        }


}

