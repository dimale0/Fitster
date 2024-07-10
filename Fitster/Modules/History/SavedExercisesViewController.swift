//
//  SavedExercisesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class SavedExercisesViewController: UIViewController {
    @IBOutlet weak var finishedExercisesCollectionView: UICollectionView!
    
    var finishedExercises: [Exercise] = []
    var selectedDate: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        finishedExercisesCollectionView.dataSource = self
        finishedExercisesCollectionView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        finishedExercises = ExerciseManager.shared.loadExercises().filter { $0.time.hasPrefix(selectedDate) }
        finishedExercisesCollectionView.reloadData()
    }
}

private extension SavedExercisesViewController {
    func showDeleteConfirmation(for exercise: Exercise, at indexPath: IndexPath) {
        let alert = UIAlertController(title: "Подтвердите удаление",
                                      message: "Вы уверены, что хотите удалить это упражнение?",
                                      preferredStyle: .alert)
        
        let deleteAction = UIAlertAction(title: "Да", style: .destructive) { _ in
            self.deleteExercise(at: indexPath)
        }
        let cancelAction = UIAlertAction(title: "Нет", style: .cancel, handler: nil)
        
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func deleteExercise(at indexPath: IndexPath) {
        guard indexPath.row < finishedExercises.count else {
            // Безопасная проверка, чтобы избежать выхода за пределы массива
            return
        }
        
        finishedExercises.remove(at: indexPath.row)
        ExerciseManager.shared.saveExercises(finishedExercises)
        finishedExercisesCollectionView.reloadData()
    }
    
    @objc func deleteButtonTapped(_ sender: UIButton) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
        guard indexPath.row < finishedExercises.count else {
            // Безопасная проверка, чтобы избежать выхода за пределы массива
            return
        }
        showDeleteConfirmation(for: finishedExercises[indexPath.row], at: indexPath)
    }
}

extension SavedExercisesViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return finishedExercises.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SavedEx", for: indexPath) as? SavedExercisesCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.config(exercise: finishedExercises[indexPath.row])
        cell.deleteButton.tag = indexPath.row
        cell.deleteButton.addTarget(self, action: #selector(deleteButtonTapped(_:)), for: .touchUpInside)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 479)
    }
}
