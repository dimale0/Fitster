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
        Training(id: 1, title: "Бицепс", exercises: [
            Exercise(id: 1 , title: "Сгибание рук (молотки)", description: "...", isFinished: false, callories: 0, time: "", image: "молотки"),
            Exercise(id: 2, title: "Сгибание рук с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "сгибание рук с гантелями"),
            Exercise(id: 3, title: "Сгибание рук со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "сгибание рук со штангой"),
            Exercise(id: 4, title: "Подъем на бицепс (тренажер)", description: "...", isFinished: false, callories: 0, time: "", image: "бицепс тренажер"),
        ], image: "сгибание рук с гантелями" ),
        Training(id: 2, title: "Трицепс", exercises: [
            Exercise(id: 5, title: "Жим с канатом", description: "...", isFinished: false, callories: 0, time: "", image: "жим с канатом"),
            Exercise(id: 6, title: "Разгибания с канатом", description: "...", isFinished: false, callories: 0, time: "", image: "разгибания с канатом"),
            Exercise(id: 7, title: "Разгибания с гантелью", description: "...", isFinished: false, callories: 0, time: "", image: "разгибание на трицепс с гантелью"),
            Exercise(id: 8, title: "Брусья", description: "...", isFinished: false, callories: 0, time: "", image: "брусья"),
            Exercise(id: 9, title: "Брусья (с помощью)", description: "...", isFinished: false, callories: 0, time: "", image: "брусья с помощью"),
        ], image: "разгибание на трицепс с гантелью" ),
        Training(id: 3, title: "Плечи", exercises: [
            Exercise(id: 12, title: "Махи руками", description: "...", isFinished: false, callories: 0, time: "", image: "плечи махи"),
            Exercise(id: 13, title: "Жим сидя с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "плечи гантели сидя"),
            Exercise(id: 14, title: "Жим сидя на тренажере", description: "...", isFinished: false, callories: 0, time: "", image: "плечи жим тренажер"),
        ], image: "плечи махи"),
        Training(id: 4, title: "Предплечья", exercises: [
            Exercise(id: 10, title: "Сгибание с гантелью", description: "...", isFinished: false, callories: 0, time: "", image: "предплечья гантели"),
            Exercise(id: 11, title: "Сгибание со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "предплечья со штангой"),
        ], image: "предплечья гантели"),
        Training(id: 5, title: "Грудь", exercises: [
            Exercise(id: 15, title: "Жим лежа со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим лежа"),
            Exercise(id: 16, title: "Жим в наклоне со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим в наклоне"),
            Exercise(id: 17, title: "Жим в наклоне с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим гантелями"),
            Exercise(id: 18, title: "Отжимания", description: "...", isFinished: false, callories: 0, time: "", image: "грудь отжимания"),
            Exercise(id: 19, title: "Бабочка", description: "...", isFinished: false, callories: 0, time: "", image: "грудь бабочка"),
            Exercise(id: 20, title: "Брусья", description: "...", isFinished: false, callories: 0, time: "", image: "брусья"),
        ], image: "грудь бабочка" ),
        Training(id: 6, title: "Спина", exercises: [
            Exercise(id: 21, title: "Вертикальная тяга широким хватом", description: "...", isFinished: false, callories: 0, time: "", image: "спина широкий хват"),
            Exercise(id: 22, title: "Вертикальная тяга узким хватом", description: "...", isFinished: false, callories: 0, time: "", image: "спина узкий хват"),
            Exercise(id: 23, title: "Рычажная тяга", description: "...", isFinished: false, callories: 0, time: "", image: "рычажная тяга"),
            Exercise(id: 24, title: "Подтягивания", description: "...", isFinished: false, callories: 0, time: "", image: "спина подтягивания"),
            Exercise(id: 25, title: "Подтягивания (с помощью)", description: "...", isFinished: false, callories: 0, time: "", image: "спина подтягивания с помощью"),
            Exercise(id: 26, title: "Тяга на себя", description: "...", isFinished: false, callories: 0, time: "", image: "горизонтальная тяга"),
            Exercise(id: 27, title: "Тяга штанги в наклоне", description: "...", isFinished: false, callories: 0, time: "", image: "спина тяга в наклоне"),
        ], image: "спина широкий хват"),
        Training(id: 7, title: "Ноги", exercises: [
            Exercise(id: 28, title: "Жим ногами", description: "...", isFinished: false, callories: 0, time: "", image: "ноги жим"),
            Exercise(id: 29, title: "Сгибание ног", description: "...", isFinished: false, callories: 0, time: "", image: "ноги разгибание"),
            Exercise(id: 30, title: "Разгибание ног", description: "...", isFinished: false, callories: 0, time: "", image: "ноги разгибание"),
            Exercise(id: 31, title: "Подъем на носки сидя", description: "...", isFinished: false, callories: 0, time: "", image: "ноги подъем на носки сидя"),
            Exercise(id: 32, title: "Присед со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "ноги присед"),
            Exercise(id: 33, title: "Присед со штангой (тренажер Смита)", description: "...", isFinished: false, callories: 0, time: "", image: "ноги тренажер смита"),
            Exercise(id: 34, title: "Бег", description: "...", isFinished: false, callories: 0, time: "", image: "ноги бег"),
        ], image: "ноги бег"),
        Training(id: 8, title: "Пресс", exercises: [
            Exercise(id: 35, title: "Скручивания", description: "...", isFinished: false, callories: 0, time: "", image: "пресс скручивания"),
            Exercise(id: 36, title: "Скручивания в наклоне", description: "...", isFinished: false, callories: 0, time: "", image: "пресс в наклоне"),
            Exercise(id: 37, title: "Скручивания с утяжелителями", description: "...", isFinished: false, callories: 0, time: "", image: "пресс скручивания с весом"),
            Exercise(id: 38, title: "Подъем ног лежа", description: "...", isFinished: false, callories: 0, time: "", image: "пресс подъем ног"),
            Exercise(id: 39, title: "Подъем ног на брусьях", description: "...", isFinished: false, callories: 0, time: "", image: "пресс подъем ног на брусьяъ"),
        ], image: "пресс скручивания")
    ]
    
    let exercises: [Exercise] = [
        Exercise(id: 1 , title: "Сгибание рук (молотки)", description: "...", isFinished: false, callories: 0, time: "", image: "молотки"),
        Exercise(id: 2, title: "Сгибание рук с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "сгибание рук с гантелями"),
        Exercise(id: 3, title: "Сгибание рук со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "сгибание рук со штангой"),
        Exercise(id: 4, title: "Подъем на бицепс (тренажер)", description: "...", isFinished: false, callories: 0, time: "", image: "бицепс тренажер"),
        Exercise(id: 5, title: "Жим с канатом", description: "...", isFinished: false, callories: 0, time: "", image: "жим с канатом"),
        Exercise(id: 6, title: "Разгибания с канатом", description: "...", isFinished: false, callories: 0, time: "", image: "разгибания с канатом"),
        Exercise(id: 7, title: "Разгибания с гантелью", description: "...", isFinished: false, callories: 0, time: "", image: "разгибание на трицепс с гантелью"),
        Exercise(id: 8, title: "Брусья", description: "...", isFinished: false, callories: 0, time: "", image: "брусья"),
        Exercise(id: 9, title: "Брусья (с помощью)", description: "...", isFinished: false, callories: 0, time: "", image: "брусья с помощью"),
        Exercise(id: 10, title: "Сгибание с гантелью", description: "...", isFinished: false, callories: 0, time: "", image: "предплечья гантели"),
        Exercise(id: 11, title: "Сгибание со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "предплечья со штангой"),
        Exercise(id: 12, title: "Махи руками", description: "...", isFinished: false, callories: 0, time: "", image: "плечи махи"),
        Exercise(id: 13, title: "Жим сидя с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "плечи гантели сидя"),
        Exercise(id: 14, title: "Жим сидя на тренажере", description: "...", isFinished: false, callories: 0, time: "", image: "плечи жим тренажер"),
        Exercise(id: 15, title: "Жим лежа со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим лежа"),
        Exercise(id: 16, title: "Жим в наклоне со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим в наклоне"),
        Exercise(id: 17, title: "Жим в наклоне с гантелями", description: "...", isFinished: false, callories: 0, time: "", image: "грудь жим гантелями"),
        Exercise(id: 18, title: "Отжимания", description: "...", isFinished: false, callories: 0, time: "", image: "грудь отжимания"),
        Exercise(id: 19, title: "Бабочка", description: "...", isFinished: false, callories: 0, time: "", image: "грудь бабочка"),
        Exercise(id: 20, title: "Брусья", description: "...", isFinished: false, callories: 0, time: "", image: "брусья"),
        Exercise(id: 21, title: "Вертикальная тяга широким хватом", description: "...", isFinished: false, callories: 0, time: "", image: "спина широкий хват"),
        Exercise(id: 22, title: "Вертикальная тяга узким хватом", description: "...", isFinished: false, callories: 0, time: "", image: "спина узкий хват"),
        Exercise(id: 23, title: "Рычажная тяга", description: "...", isFinished: false, callories: 0, time: "", image: "рычажная тяга"),
        Exercise(id: 24, title: "Подтягивания", description: "...", isFinished: false, callories: 0, time: "", image: "спина подтягивания"),
        Exercise(id: 25, title: "Подтягивания (с помощью)", description: "...", isFinished: false, callories: 0, time: "", image: "спина подтягивания с помощью"),
        Exercise(id: 26, title: "Тяга на себя", description: "...", isFinished: false, callories: 0, time: "", image: "горизонтальная тяга"),
        Exercise(id: 27, title: "Тяга штанги в наклоне", description: "...", isFinished: false, callories: 0, time: "", image: "спина тяга в наклоне"),
        Exercise(id: 28, title: "Жим ногами", description: "...", isFinished: false, callories: 0, time: "", image: "ноги жим"),
        Exercise(id: 29, title: "Сгибание ног", description: "...", isFinished: false, callories: 0, time: "", image: "ноги разгибание"),
        Exercise(id: 30, title: "Разгибание ног", description: "...", isFinished: false, callories: 0, time: "", image: "ноги разгибание"),
        Exercise(id: 31, title: "Подъем на носки сидя", description: "...", isFinished: false, callories: 0, time: "", image: "ноги подъем на носки сидя"),
        Exercise(id: 32, title: "Присед со штангой", description: "...", isFinished: false, callories: 0, time: "", image: "ноги присед"),
        Exercise(id: 33, title: "Присед со штангой (тренажер Смита)", description: "...", isFinished: false, callories: 0, time: "", image: "ноги тренажер смита"),
        Exercise(id: 34, title: "Бег", description: "...", isFinished: false, callories: 0, time: "", image: "ноги бег"),
        Exercise(id: 35, title: "Скручивания", description: "...", isFinished: false, callories: 0, time: "", image: "пресс скручивания"),
        Exercise(id: 36, title: "Скручивания в наклоне", description: "...", isFinished: false, callories: 0, time: "", image: "пресс в наклоне"),
        Exercise(id: 37, title: "Скручивания с утяжелителями", description: "...", isFinished: false, callories: 0, time: "", image: "пресс скручивания с весом"),
        Exercise(id: 38, title: "Подъем ног лежа", description: "...", isFinished: false, callories: 0, time: "", image: "пресс подъем ног"),
        Exercise(id: 39, title: "Подъем ног на брусьях", description: "...", isFinished: false, callories: 0, time: "", image: "пресс подъем ног на брусьяъ"),
    ]

    var finishedExercises: [Exercise] {
        return ExerciseManager.shared.loadExercises()
    }
    
}
