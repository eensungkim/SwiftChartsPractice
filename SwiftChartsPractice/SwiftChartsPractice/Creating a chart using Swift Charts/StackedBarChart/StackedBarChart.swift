//
//  StackedBarChart.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import SwiftUI
import Charts

struct StackedBarChart: View {
    var stackedBarData = ToyShapeExtension.stackedBarData
    
    var body: some View {
        Chart {
            ForEach(stackedBarData) {
                BarMark(
                    x: .value("Shape Type", $0.type),
                    y: .value("Total Count", $0.count)
                )
                .foregroundStyle(by: .value("Shape Color", $0.color))
            }
        }
    }
}

#Preview {
    StackedBarChart()
}
