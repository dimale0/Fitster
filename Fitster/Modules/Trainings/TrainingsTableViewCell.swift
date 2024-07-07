//
//  TrainingsTableViewCell.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 05.07.2024.
//

import UIKit

class TrainingsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleTraining: UILabel!
    @IBOutlet weak var imageTraining: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleTraining.text = nil
        imageTraining.image = nil
    }
    
    func config(training: Training){
        titleTraining.text = training.title
        imageTraining.image = UIImage(named: training.image)
    }
}
