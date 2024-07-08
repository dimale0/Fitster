//
//  Exercise.swift
//  Fitster
//
//  Created by Дмитрий Леонтьев on 07.07.2024.
//

import Foundation
struct Exercise{
    let id: Int
    let title: String
    let description: String
    var isFinished: Bool
    var callories:Int
    var time: String
    let image:String
    
    init(id: Int, title: String, description: String, isFinished: Bool, callories: Int, time: String, image: String) {
        self.id = id
        self.title = title
        self.description = description
        self.isFinished = isFinished
        self.callories = callories
        self.time = time
        self.image = image
    }
}
