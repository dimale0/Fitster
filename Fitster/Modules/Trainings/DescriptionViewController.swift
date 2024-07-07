//
//  DescriptionViewController.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 06.07.2024.
//

import UIKit

class DescriptionViewController: UIViewController {
    var exercise: Exercise?
    
    @IBOutlet weak var titleExercise: UILabel!
    @IBOutlet weak var imageExercise: UIImageView!
    @IBOutlet weak var descriptionExercise: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleExercise.text = exercise?.title
        self.imageExercise.image = UIImage(named: exercise!.image)
        self.descriptionExercise.text = exercise?.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let destinationVC = segue.destination as? CalloriesViewController{
               destinationVC.idEx = exercise?.id
            }
        }
    }
}
