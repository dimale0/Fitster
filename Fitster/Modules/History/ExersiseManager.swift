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
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(exercises) {
            UserDefaults.standard.set(encoded, forKey: exercisesKey)
        }
    }

    func loadExercises() -> [Exercise] {
        if let savedData = UserDefaults.standard.data(forKey: exercisesKey) {
            let decoder = JSONDecoder()
            if let loadedExercises = try? decoder.decode([Exercise].self, from: savedData) {
                return loadedExercises
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
