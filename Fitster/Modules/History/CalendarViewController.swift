//
//  CalendarViewController.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarCollectionView: UICollectionView!
    
    @objc func cellTapped(_ sender: UITapGestureRecognizer) {
        guard let cell = sender.view as? CalendarCollectionViewCell,
              let indexPath = calendarCollectionView.indexPath(for: cell) else {
            return
        }
        
        let selectedDate = dates[indexPath.item]
        performSegue(withIdentifier: "showDetails", sender: selectedDate)
    }
    
    var dates: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        calendarCollectionView.reloadData()

        
        calendarCollectionView.dataSource = self
        calendarCollectionView.delegate = self
        
      
        initializeUniqueDates()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initializeUniqueDates()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            if let selectedDate = sender as? String {
                let destinationVC = segue.destination as! SavedExercisesViewController
                destinationVC.selectedDate = selectedDate
            }
        }
    }
   
    func initializeUniqueDates() {
        let uniqueDates = Set(MockData.shared.finishedExercises.map { String($0.time.prefix(10)) })
        dates = Array(uniqueDates).sorted() 
        calendarCollectionView.reloadData()
    }
}


extension CalendarViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dates.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CalendarCell", for: indexPath) as! CalendarCollectionViewCell
        
        let date = dates[indexPath.item]
        cell.config(date: date)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cellTapped(_:)))
        cell.addGestureRecognizer(tapGesture)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 48)
    }
}
