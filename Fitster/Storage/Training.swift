//
//  Training.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 07.07.2024.
//

import Foundation
struct Training {
    let id: Int
    let title: String
    let exercises: [Exercise]
    let image: String
    
    init(id: Int, title: String, exercises: [Exercise], image: String) {
        self.id = id
        self.title = title
        self.exercises = exercises
        self.image = image
    }
}
