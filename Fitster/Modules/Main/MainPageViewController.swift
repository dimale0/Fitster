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
    
    override func viewDidLoad() {
//        UserDefaults.standard.removeObject(forKey: "savedHeight")
//        UserDefaults.standard.removeObject(forKey: "savedWeight")
//        UserDefaults.standard.removeObject(forKey: "savedAge")
//        UserDefaults.standard.removeObject(forKey: "selectedOption")
//        UserDefaults.standard.removeObject(forKey: "savedSex")
//        UserDefaults.standard.removeObject(forKey: "isAllDataSaved")

        super.viewDidLoad()
        
        if (defaults.value(forKey: "isAllDataSaved") == nil){
            print(defaults.value(forKey: "isAllDataSaved") as Any)
            performSegue(withIdentifier: "goToInputParameters", sender: nil)
        }

        self.heightLabel.text = defaults.string(forKey: "savedHeight")
        self.weightLabel.text = defaults.string(forKey: "savedWeight")
        self.optionLabel.text = defaults.string(forKey: "selectedOption")
        
        if ((defaults.value(forKey: "isAllDataSaved") != nil) == true){
            var option = defaults.string(forKey: "selectedOption")
            var height = defaults.string(forKey: "savedHeight")
            var weight = defaults.string(forKey: "savedWeight")
            var age = defaults.string(forKey: "savedAge")
            var sex = defaults.string(forKey: "savedSex")
            
            switch option{
            case "Набор массы":
                if sex as! String == "male"{
                    dayCalories = (66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age)) * 1.6
                }else{
                    dayCalories = (655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age)) * 1.6
                }
            case "Поддержание веса":
                if sex as! String == "male"{
                    dayCalories = (66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age)) * 1.3
                }else{
                    dayCalories = (655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age)) * 1.3
                }
            case "Уменьшение веса":
                if sex as! String == "male"{
                    dayCalories = (66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age)) * 0.85
                }else{
                    dayCalories = (655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age)) * 0.85
                }
            default:
                dayCalories = 0
            }
        }
        
    }


}

