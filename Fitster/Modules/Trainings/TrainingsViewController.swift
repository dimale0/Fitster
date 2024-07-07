//
//  TrainingsViewController.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 05.07.2024.
//

import UIKit

struct Training {
    let id: Int
    let title: String
    let exercises: [Exercise]
    let image: String
    
    // ...
    init(id: Int, title: String, exercises: [Exercise], image: String) {
        self.id = id
        self.title = title
        self.exercises = exercises
        self.image = image
    }
}

struct Exercise : Codable {
    let id: Int
    let title: String
    let description: String
    var isFinished: Bool
    var callories:Int
    var time: String
    let image:String
    
    init(id: Int, title: String, description: String, isFinished: Bool, callories: Int, time: String, image: String) {
        self.id = id
        self.title = title
        self.description = description
        self.isFinished = isFinished
        self.callories = callories
        self.time = time
        self.image = image
    }
}

struct MockData {
    static let shared = MockData()
    
    let trainings: [Training] = [
        Training(id: 1, title: "Ноги", exercises: [
            Exercise(id: 1, title: "Присяд", description: "...", isFinished: false, callories: 0, time: "", image: "ноги"),
            Exercise(id: 1, title: "Присяд", description: "...", isFinished: false, callories: 0, time: "", image: "ноги")
        ], image: "ноги")
    ]
    
    let exercises: [Exercise] = [
        Exercise(id: 1, title: "Ноги", description: "Присед", isFinished: false, callories: 0, time: "", image: "Присед")
    ]

    var finishedExercises: [Exercise] {
        return ExerciseManager.shared.loadExercises()
    }
    
}

class TrainingsViewController: UIViewController {
    
    let trainings = MockData.shared.trainings
    
    @IBOutlet weak var tableTrainings: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTrainings.dataSource = self
        tableTrainings.delegate = self
    }
}

extension TrainingsViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trainings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TrainingsTableViewCell") as? TrainingsTableViewCell else { return UITableViewCell() }
        cell.config(training: trainings[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let indexPath = tableTrainings.indexPathForSelectedRow {
                let selectedTraining = trainings[indexPath.row]
                if let training = segue.destination as? ExercisesViewController {
                    training.training = selectedTraining
                }
            }
        }
    }
}
