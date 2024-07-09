//
//  DataInputViewController.swift
//  Fitster
//
//  Created by Тимур Салахиев on 07.07.2024.
//

import UIKit

class ParametersInputViewController: UIViewController, UITextFieldDelegate{
    var selectedOption = ""

    let options = ["", "Набор веса", "Поддержание веса", "Уменьшение веса"]



    @IBOutlet weak var heightTF: UITextField!
    
    @IBOutlet weak var weightTF: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var ageTF: UITextField!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        heightTF.delegate = self
        heightTF.keyboardType = .decimalPad
        weightTF.delegate = self
        weightTF.keyboardType = .decimalPad
        ageTF.delegate = self
        ageTF.keyboardType = .decimalPad


    }
  
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            MainPageViewController().defaults.set("male", forKey: "savedSex")
        case 1:
            MainPageViewController().defaults.set("female", forKey: "savedSex")
        default:
            break
        }
    }
    
    
    
    @IBAction func applyHeightPressed(_ sender: UIButton) {
        if let height = heightTF.text{
            MainPageViewController().defaults.set(Double(height), forKey: "savedHeight")
        }
        if let weight = weightTF.text{
            MainPageViewController().defaults.set(Double(weight), forKey: "savedWeight")
        }
        if let age = ageTF.text{
            MainPageViewController().defaults.set(Double(age), forKey: "savedAge")
        }
        MainPageViewController().defaults.set(String(selectedOption), forKey: "selectedOption")
        
        
        if heightTF.text != "" && weightTF.text != "" && ageTF.text != "" && selectedOption != ""{
            MainPageViewController().defaults.set(true, forKey: "isAllDataSaved")
            dismiss(animated: true, completion: nil)
        } else {
                let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        }
        MainPageViewController().defaults.set(0, forKey: "takenCalories")
        //print(MainPageViewController().defaults.data(forKey: "isAllDataSaved"))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}
extension ParametersInputViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedOption = options[row]
    }

}


