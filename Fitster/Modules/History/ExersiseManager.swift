//
//  ExersiseManager.swift
//  Fitster
//
//  Created by Артур Мавликаев on 06.07.2024.
//

import Foundation

class ExerciseManager {
    static let shared = ExerciseManager()
    private let exercisesKey = "finishedExercises"

    private init() {}

    func saveExercises(_ exercises: [Exercise]) {
        let exercisesData = exercises.map { exercise in
            [
                "id": "\(exercise.id)",
                "title": exercise.title,
                "description": exercise.description,
                "isFinished": "\(exercise.isFinished)",
                "callories": "\(exercise.callories)",
                "time": exercise.time,
                "image": exercise.image
            ]
        }
        UserDefaults.standard.set(exercisesData, forKey: exercisesKey)
    }

    func loadExercises() -> [Exercise] {
        if let savedData = UserDefaults.standard.array(forKey: exercisesKey) as? [[String: String]] {
            return savedData.compactMap { data in
                guard
                    let idString = data["id"], let id = Int(idString),
                    let title = data["title"],
                    let description = data["description"],
                    let isFinishedString = data["isFinished"], let isFinished = Bool(isFinishedString),
                    let calloriesString = data["callories"], let callories = Int(calloriesString),
                    let time = data["time"],
                    let image = data["image"]
                else {
                    return nil
                }
                return Exercise(id: id, title: title, description: description, isFinished: isFinished, callories: callories, time: time, image: image)
            }
        }
        return []
    }

    func addExercise(_ exercise: Exercise) {
        var exercises = loadExercises()
        exercises.append(exercise)
        saveExercises(exercises)
    }
}
