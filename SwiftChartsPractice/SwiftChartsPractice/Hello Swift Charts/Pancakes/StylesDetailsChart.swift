//
//  StylesDetailsChart.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import SwiftUI
import Charts

struct StylesDetailsChart: View {
    var sales: [Pancakes] = Pancakes.sales
    
    var body: some View {
        HStack {
            Text("Most Sold Style Over The Last 30 Days")
            Spacer()
        }
        
        Chart(sales) {
            BarMark(
                x: .value("Sales", $0.sales),
                y: .value("Name", $0.name)
            )
        }
    }
}

#Preview {
    StylesDetailsChart()
}
