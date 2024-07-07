//
//  CalendarCollectionViewCell.swift
//  Fitster
//
//  Created by Артур Мавликаев on 05.07.2024.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var time: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        time.text = nil
    }
    
    func config(date: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = dateFormatter.date(from: date) {
            dateFormatter.locale = Locale(identifier: "ru_RU")
            dateFormatter.dateFormat = "d MMMM yyyy 'года'"
            let formattedDate = dateFormatter.string(from: date)
            time.text = formattedDate
        } else {
            time.text = "Неверная дата"
        }
    }
}
