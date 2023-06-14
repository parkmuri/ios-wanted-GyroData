//
//  GyroDataModel.swift
//  GyroData
//
//  Created by 무리 on 2023/06/13.
//

import Foundation

enum GyroType {
    case gyro
    case accelerometer
    
    var title: String {
        switch self {
        case .gyro:
            return "Gyro"
        case .accelerometer:
            return "Accelerometer"
        }
    }
}

struct GyroDataModel {
    let id: UUID
    var type: GyroType
    var xAxis: Double
    var yAxis: Double
    var zAxis: Double
    var date: Date
    var timer: Double
}
