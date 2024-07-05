//
//  SavedExercisesViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class SavedExercisesViewController: UIViewController {
    @IBOutlet weak var fininshedExercises: UICollectionView!
    
    var finishedExercises: [Exercise] = []
    
    var selectedDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fininshedExercises.dataSource = self
        fininshedExercises.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        finishedExercises = MockData.shared.finishedExercises
        filterExercisesByDate(selectedDate)
        fininshedExercises.reloadData()
    }
    
   
    func filterExercisesByDate(_ date: String) {
        finishedExercises = MockData.shared.finishedExercises.filter { $0.time.hasPrefix(date) }
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
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 353)
    }
}
