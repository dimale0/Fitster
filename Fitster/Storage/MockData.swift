//
//  MockData.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 07.07.2024.
//

import Foundation
struct MockData {
    static let shared = MockData()
    
    let trainings: [Training] = [
        Training(id: 1, title: "Ноги", exercises: [
            Exercise(id: 1, title: "Присед", description: "...", isFinished: false, callories: 0, time: "", image: "ноги"),
            Exercise(id: 2, title: "Бег", description: "...", isFinished: false, callories: 0, time: "", image: "ноги")
        ], image: "ноги")
    ]
    
    let exercises: [Exercise] = [
        Exercise(id: 1, title: "Присед", description: "...", isFinished: false, callories: 0, time: "", image: "ноги"),
        Exercise(id: 2, title: "Бег", description: "...", isFinished: false, callories: 0, time: "", image: "ноги")
    ]

    var finishedExercises: [Exercise] {
        return ExerciseManager.shared.loadExercises()
    }
    
}
