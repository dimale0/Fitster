//
//  MockData.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 07.07.2024.
//

import Foundation
struct MockData {
    static let shared = MockData()
    
    //
    //  MockData.swift
    //  Fitster
    //
    //  Created by Дмитрий Леонтьев on 07.07.2024.
    //

        let trainings: [Training] = [
            Training(id: 1, title: "Бицепс", exercises: [
                Exercise(id: 1 , title: "Сгибание рук (молотки)", description: "Держите гантели по бокам, ладонями внутрь. Сгибайте локти, поднимая гантели к плечам, затем опустите.", isFinished: false, callories: 0, time: "", image: "молотки"),
                Exercise(id: 2, title: "Сгибание рук с гантелями", description: "Держите гантели ладонями вверх. Сгибайте локти, поднимая гантели к плечам, затем опустите.", isFinished: false, callories: 0, time: "", image: "сгибание рук с гантелями"),
                Exercise(id: 3, title: "Сгибание рук со штангой", description: "Держите штангу ладонями вверх на ширине плеч. Сгибайте локти, поднимая штангу к плечам, затем опустите.", isFinished: false, callories: 0, time: "", image: "сгибание рук со штангой"),
                Exercise(id: 4, title: "Подъем на бицепс (тренажер)", description: "Сидя в тренажере, возьмитесь за рукояти и согните локти, поднимая вес к плечам, затем опустите.", isFinished: false, callories: 0, time: "", image: "бицепс тренажер"),
            ], image: "сгибание рук с гантелями" ),
            Training(id: 2, title: "Трицепс", exercises: [
                Exercise(id: 5, title: "Жим с канатом", description: "Закрепите канат на верхнем блоке. Наклонитесь вперед и вытолкните канат вниз, разгибая локти.", isFinished: false, callories: 0, time: "", image: "жим с канатом"),
                Exercise(id: 6, title: "Разгибания с канатом", description: "Закрепите канат на верхнем блоке. Держите локти возле тела и разгибайте руки, растягивая канат вниз.", isFinished: false, callories: 0, time: "", image: "разгибания с канатом"),
                Exercise(id: 7, title: "Разгибания с гантелью", description: "Возьмите гантель одной рукой. Поднимите руку вверх и согните локоть, опуская гантель за голову, затем выпрямите.", isFinished: false, callories: 0, time: "", image: "разгибание на трицепс с гантелью"),
                Exercise(id: 8, title: "Брусья", description: "Выполняйте отжимания на брусьях, сгибая локти до угла 90 градусов, затем поднимайтесь обратно.", isFinished: false, callories: 0, time: "", image: "брусья"),
                Exercise(id: 9, title: "Брусья (с помощью)", description: "Используйте ассистирующий тренажер. Выполняйте отжимания на брусьях, получая помощь от машины.", isFinished: false, callories: 0, time: "", image: "брусья с помощью"),
            ], image: "разгибание на трицепс с гантелью" ),
            Training(id: 3, title: "Плечи", exercises: [
                Exercise(id: 10, title: "Махи руками", description: "Держите гантели по бокам. Поднимите руки в стороны до уровня плеч, затем опустите.", isFinished: false, callories: 0, time: "", image: "плечи махи"),
                Exercise(id: 11, title: "Жим сидя с гантелями", description: "Сядьте на скамью с гантелями. Поднимите гантели к плечам, затем выжмите вверх.", isFinished: false, callories: 0, time: "", image: "плечи гантели сидя"),
                Exercise(id: 12, title: "Жим сидя на тренажере", description: "Сядьте в тренажер. Возьмитесь за рукояти и выжмите вес вверх, затем опустите.", isFinished: false, callories: 0, time: "", image: "плечи жим тренажер"),
                Exercise(id: 13, title: "Жим стоя со штангой", description: "Возьмите штангу на плечи. Поднимите штангу над головой, затем опустите обратно на плечи.", isFinished: false, callories: 0, time: "", image: "плечи штанга стоя"),
                Exercise(id: 14, title: "Разведения в наклоне", description: "Наклонитесь вперед с гантелями. Поднимите руки в стороны до уровня плеч, затем опустите.", isFinished: false, callories: 0, time: "", image: "плечи разведения в наклоне"),
            ], image: "плечи махи"),
            Training(id: 4, title: "Предплечья", exercises: [
                Exercise(id: 15, title: "Сгибание с гантелью", description: "Держите гантели в руках. Сгибайте запястья, поднимая гантели вверх, затем опустите.", isFinished: false, callories: 0, time: "", image: "предплечья гантели"),
                Exercise(id: 16, title: "Сгибание со штангой", description: "Держите штангу перед собой. Сгибайте запястья, поднимая штангу вверх, затем опустите.", isFinished: false, callories: 0, time: "", image: "предплечья со штангой"),
            ], image: "предплечья гантели"),
            Training(id: 5, title: "Грудь", exercises: [
                Exercise(id: 17, title: "Жим лежа со штангой", description: "Лягте на скамью, возьмите штангу шире плеч. Опустите штангу к груди, затем выжмите вверх.", isFinished: false, callories: 0, time: "", image: "грудь жим лежа"),
                Exercise(id: 18, title: "Жим в наклоне со штангой", description: "Лягте на наклонную скамью. Опустите штангу к верхней части груди, затем выжмите вверх.", isFinished: false, callories: 0, time: "", image: "грудь жим в наклоне"),
                Exercise(id: 19, title: "Жим в наклоне с гантелями", description: "Лягте на наклонную скамью с гантелями. Опустите гантели к груди, затем выжмите вверх.", isFinished: false, callories: 0, time: "", image: "грудь жим гантелями"),
                Exercise(id: 20, title: "Отжимания", description: "Примите упор лежа. Сгибайте локти, опускаясь к полу, затем поднимайтесь обратно.", isFinished: false, callories: 0, time: "", image: "грудь отжимания"),
                Exercise(id: 21, title: "Бабочка", description: "Сидя в тренажере, возьмитесь за рукояти и сведите их перед собой, затем разведите назад.", isFinished: false, callories: 0, time: "", image: "грудь бабочка"),
                Exercise(id: 22, title: "Брусья", description: "Выполняйте отжимания на брусьях, сгибая локти до угла 90 градусов, затем поднимайтесь обратно.", isFinished: false, callories: 0, time: "", image: "брусья"),
            ], image: "грудь бабочка" ),
            Training(id: 6, title: "Спина", exercises: [
                Exercise(id: 23, title: "Вертикальная тяга широким хватом", description: "Закрепите штангу на верхнем блоке. Тяните штангу к груди, сгибая локти, затем верните обратно.", isFinished: false, callories: 0, time: "", image: "спина широкий хват"),
                Exercise(id: 24, title: "Тяга к животу в тренажере", description: "Сидя в тренажере, возьмитесь за рукояти и тяните их к животу, затем верните назад.", isFinished: false, callories: 0, time: "", image: "тяга к животу"),
                Exercise(id: 25, title: "Гиперэкстензия", description: "Лягте на гиперэкстензию, зафиксируйте ноги. Поднимайте корпус вверх, затем опускайте.", isFinished: false, callories: 0, time: "", image: "гиперэкстензия"),
                Exercise(id: 26, title: "Становая тяга", description: "Держите штангу на полу. Наклонитесь, возьмите штангу и поднимитесь, выпрямляя тело.", isFinished: false, callories: 0, time: "", image: "становая тяга"),
                Exercise(id: 36, title: "Тяга горизонтального блока", description: "Сидя в тренажере, возьмитесь за рукоять и тяните ее к животу, затем верните назад.", isFinished: false, callories: 0, time: "", image: "тяга горизонтального блока"),
                Exercise(id: 37, title: "Тяга штанги в наклоне", description: "Наклонитесь вперед со штангой. Тяните штангу к поясу, сгибая локти, затем опустите.", isFinished: false, callories: 0, time: "", image: "тяга штанги в наклоне"),
            ], image: "становая тяга" ),
            Training(id: 7, title: "Пресс", exercises: [
                Exercise(id: 27, title: "Скручивания", description: "Лягте на пол, согните колени. Поднимите верхнюю часть тела, затем вернитесь обратно.", isFinished: false, callories: 0, time: "", image: "скручивания"),
                Exercise(id: 28, title: "Обратные скручивания", description: "Лягте на пол, ноги на весу. Поднимайте бедра к груди, сгибая пресс, затем верните обратно.", isFinished: false, callories: 0, time: "", image: "обратные скручивания"),
                Exercise(id: 29, title: "Планка", description: "Примите упор на локти и носки. Держите тело прямым, напрягая пресс и спину.", isFinished: false, callories: 0, time: "", image: "планка"),
                Exercise(id: 38, title: "Боковые скручивания", description: "Лягте на бок, одна рука за головой. Поднимите верхнюю часть тела к бедру, затем вернитесь.", isFinished: false, callories: 0, time: "", image: "боковые скручивания"),
                Exercise(id: 39, title: "Подъем ног в висе", description: "Повисните на турнике. Поднимите ноги к груди, сгибая пресс, затем верните обратно.", isFinished: false, callories: 0, time: "", image: "подъем ног в висе"),
            ], image: "скручивания" ),
            Training(id: 8, title: "Ноги", exercises: [
                Exercise(id: 30, title: "Сгибания ног", description: "Сидя в тренажере, зафиксируйте ноги под валиком. Сгибайте колени, поднимая валик, затем опустите.", isFinished: false, callories: 0, time: "", image: "сгибание ног"),
                Exercise(id: 31, title: "Разгибания ног", description: "Сидя в тренажере, зафиксируйте ноги под валиком. Разгибайте колени, поднимая валик, затем опустите.", isFinished: false, callories: 0, time: "", image: "разгибание ног"),
                Exercise(id: 32, title: "Жим ногами", description: "Сидя в тренажере, поставьте ноги на платформу. Разгибайте колени, выталкивая платформу, затем верните.", isFinished: false, callories: 0, time: "", image: "жим ногами"),
                Exercise(id: 33, title: "Приседания со штангой", description: "Поставьте штангу на плечи. Сгибайте колени и опускайтесь в присед, затем поднимитесь.", isFinished: false, callories: 0, time: "", image: "приседания"),
                Exercise(id: 34, title: "Мертвая тяга", description: "Держите штангу перед собой. Согните бедра и наклонитесь, затем выпрямитесь, поднимая штангу.", isFinished: false, callories: 0, time: "", image: "мертвая тяга"),
                Exercise(id: 35, title: "Выпады", description: "Держите гантели по бокам. Сделайте шаг вперед и опуститесь в выпад, затем поднимитесь и вернитесь.", isFinished: false, callories: 0, time: "", image: "выпады"),
            ], image: "выпады" ),
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
