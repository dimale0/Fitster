//
//  CalloriesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit
class CalloriesViewController: UIViewController {
    var idEx: Int!
    
    @IBOutlet weak var CalloriesTextField: UITextField!
    @IBAction func SaveButton(_ sender: Any) {
        if let exerciseIndex = MockData.shared.exercises.firstIndex(where: { $0.id == idEx }) {
            var exercise = MockData.shared.exercises[exerciseIndex]
            exercise.isFinished = true
            if let calloriesText = CalloriesTextField.text, let calloriesValue = Int(calloriesText) {
                exercise.callories = calloriesValue
                let dateFormatter = DateFormatter()
                               dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                               let currentTime = dateFormatter.string(from: Date())
                               exercise.time = currentTime
                ExerciseManager.shared.addExercise(exercise)
                
            }
        }
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
    @IBAction func Dismiss(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    }


