//
//  CaloriesInputViewController.swift
//  Fitster
//
//  Created by Тимур Салахиев on 08.07.2024.
//

import UIKit

class CaloriesInputViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var caloriesTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        caloriesTF.delegate = self
        caloriesTF.keyboardType = .decimalPad
    }
    
    @IBAction func applyCaloriesPressed(_ sender: UIButton) {
        if caloriesTF.text != ""{
            let currentCalories = MainPageViewController().defaults.integer(forKey: "takenCalories")
            if let calories = caloriesTF.text{
                MainPageViewController().defaults.set(Int(calories)! + currentCalories, forKey: "takenCalories")
            }
            dismiss(animated: true)
        } else {
                let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

}
