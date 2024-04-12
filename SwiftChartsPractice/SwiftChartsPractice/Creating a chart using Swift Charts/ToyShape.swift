//
//  ToyShape.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import Foundation

struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
    
    static var data: [ToyShape] = [
        .init(type: "Cube", count: 5),
        .init(type: "Sphere", count: 4),
        .init(type: "Pyramid", count: 4)
    ]
}
