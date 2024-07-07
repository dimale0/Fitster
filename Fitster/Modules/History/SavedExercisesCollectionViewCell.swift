//
//  SavedExercisesCollectionViewCell.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class SavedExercisesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var timeExercise: UILabel!
    @IBOutlet weak var calloriesExercise: UILabel!
    @IBOutlet weak var nameExercise: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var imageExercise: UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        timeExercise.text = nil
        calloriesExercise.text = nil
        nameExercise.text = nil
        imageExercise.image = nil
    }
    func config(exercise: Exercise) {
     
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        if let date = dateFormatter.date(from: exercise.time) {
         
            dateFormatter.locale = Locale(identifier: "ru_RU")
            dateFormatter.dateFormat = "d MMMM yyyy 'года'"
            let formattedDate = dateFormatter.string(from: date)
            timeExercise.text = formattedDate
        } else {
            timeExercise.text = "Invalid Date"
        }
        
       
        calloriesExercise.text = "Калорий потрачено: \(exercise.callories)"
        
       
        nameExercise.text = "Упражнение: \(exercise.title)"
        
       
        imageExercise.image = UIImage(named: exercise.image)
    }

}
