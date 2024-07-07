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

struct Exercise {
    let id: Int
    let title: String
    let image: String
    let description: String
    let isFinished: Bool
    // ...
    init(id: Int, title: String, image: String, description: String, isFinished: Bool) {
        self.id = id
        self.title = title
        self.image = image
        self.description = description
        self.isFinished = isFinished
    }
}

struct MockData {
    static let shared = MockData()
    
    let trainings: [Training] = [
        Training(id: 1, title: "Ноги", exercises: [
            Exercise(id: 1, title: "Присяд", image: "ноги", description: "....", isFinished: false),
            Exercise(id: 1, title: "Присяд", image: "ноги", description: "....", isFinished: false),
            Exercise(id: 1, title: "Присяд", image: "ноги", description: "....", isFinished: false),
            Exercise(id: 1, title: "Присяд", image: "ноги", description: "....", isFinished: false)
        ], image: "ноги")
    ]
    
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
