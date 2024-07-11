//
//  ExercisesViewController.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 05.07.2024.
//

import UIKit

class ExercisesViewController: UIViewController {
    var training: Training?
        
    @IBOutlet weak var tableExercises: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableExercises.dataSource = self
        tableExercises.delegate = self
    }
    
}

extension ExercisesViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        training!.exercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExercisesTableViewCell") as? ExercisesTableViewCell else { return UITableViewCell() }
        cell.config(exercise: training!.exercises[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let indexPath = tableExercises.indexPathForSelectedRow {
                let selectedExercise = training!.exercises[indexPath.row]
                if let exercise = segue.destination as? DescriptionViewController {
                    exercise.exercise = selectedExercise
                }
            }
        }
    }
}
