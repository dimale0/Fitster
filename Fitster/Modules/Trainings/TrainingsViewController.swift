//
//  TrainingsViewController.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 05.07.2024.
//

import UIKit

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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
