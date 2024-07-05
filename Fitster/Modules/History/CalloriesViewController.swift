//
//  CalloriesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit
struct Exercise {
    let id: Int
    let title: String
    let description: String
    var isFinished: Bool
    var callories:Int
    var time: String
    let image:String
    
    // ...
}
struct MockData {
    
    static var shared = MockData()
    let exercises: [Exercise] = [Exercise(id: 1, title: "Ноги", description:"Присед" , isFinished: false, callories: 0,time: "",image: "Присед")]
    var finishedExercises: [Exercise] = [
            Exercise(id: 1, title: "Приседания", description: "Приседания со штангой", isFinished: true, callories: 150, time: "2024-07-05 01-01-01", image: "squats"),
            Exercise(id: 2, title: "Отжимания", description: "Отжимания на брусьях", isFinished: true, callories: 100, time: "2024-07-05 01-01-01", image: "pushups"),
            Exercise(id: 3, title: "Подтягивания", description: "Подтягивания на перекладине", isFinished: true, callories: 200, time: "2024-07-06 01-01-01", image: "pullups"),
            Exercise(id: 4, title: "Планка", description: "Удержание планки на прессе", isFinished: true, callories: 50, time: "2024-07-07 01-01-01", image: "plank"),
            Exercise(id: 5, title: "Пресс", description: "Скручивания на прессе", isFinished: true, callories: 80, time: "2024-07-07 01-01-01", image: "abs")
        ]
    
    
}
class CalloriesViewController: UIViewController {
    let idEx = 1;
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
                MockData.shared.finishedExercises.append(exercise)
                
            }
        }
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

