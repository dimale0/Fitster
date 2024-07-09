//
//  CalloriesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class CalloriesViewController: UIViewController {
    var exersideId: Int!
    
    @IBOutlet weak var CalloriesTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        updateExercise(withId: exersideId)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

private extension CalloriesViewController {
    func updateExercise(withId id: Int) {
        guard let exerciseIndex = MockData.shared.exercises.firstIndex(where: { $0.id == id }) else {
            return
        }
        
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
