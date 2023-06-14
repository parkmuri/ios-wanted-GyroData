//
//  Date+.swift
//  GyroData
//
//  Created by 무리 on 2023/06/13.
//

import Foundation

extension Date {
    func convertDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        
        let convertedDate = dateFormatter.string(from: self)
        
        return convertedDate
    }
}
