//
//  ExercisesTableViewCell.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 06.07.2024.
//

import UIKit

class ExercisesTableViewCell: UITableViewCell {
    var exercise: Exercise?
    
    @IBOutlet weak var titleExercise: UILabel!
    @IBOutlet weak var imageExercise: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleExercise.text = nil
        imageExercise.image = nil
    }
    
    func config(exercise: Exercise){
        titleExercise.text = exercise.title
        imageExercise.image = UIImage(named: exercise.image)
    }
        
    
}
