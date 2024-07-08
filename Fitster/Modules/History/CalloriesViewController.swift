//
//  CalloriesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit
class CalloriesViewController: UIViewController {
    var idEx: Int! // MARK: - лучше не сокращать переменные, непонятно, для чего она используется, лучше - exerciseId;
    
    // MARK: Переменные/функции - с маленькой буквы, название файла - с заглавной.
    @IBOutlet weak var CalloriesTextField: UITextField!
    @IBAction func SaveButton(_ sender: Any) {
        updateExercise(exerciseId: idEx)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

private extension CalloriesViewController {
    // MARK: - Такую логику лучше всего выносить в отдельные приватные методы, работать с необходимыми параметрами. Добавил через extension потому, что это положительно влияет на диспетчеризацию(узнаете потом).
    func updateExercise(exerciseId: Int) {
        if let exerciseIndex = MockData.shared.exercises.firstIndex(where: { $0.id == exerciseId }) {
            var exercise = MockData.shared.exercises[exerciseIndex]
            exercise.isFinished = true
            
            if let calloriesText = CalloriesTextField.text,
                let calloriesValue = Int(calloriesText) {
                exercise.callories = calloriesValue
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let currentTime = dateFormatter.string(from: Date())
                
                exercise.time = currentTime
                ExerciseManager.shared.addExercise(exercise)
            }
        }
    }
}
