//
//  Pancakes.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import Foundation

struct Pancakes: Identifiable {
    let name: String
    let sales: Int
    
    var id: String {
        name
    }
    
    static var sales: [Pancakes] = [
        .init(name: "Cachapa", sales: 916),
        .init(name: "Injera", sales: 850),
        .init(name: "Crêpe", sales: 802),
        .init(name: "Jian Bing", sales: 753),
        .init(name: "Dosa", sales: 654),
        .init(name: "American", sales: 618)
    ]
}
