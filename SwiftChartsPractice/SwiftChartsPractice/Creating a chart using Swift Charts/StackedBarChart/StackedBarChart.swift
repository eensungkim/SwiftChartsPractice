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
                // color 값에 따라 다른 색상으로 표현
                // 프레임워크가 색상을 랜덤하게 할당
                .foregroundStyle(by: .value("Shape Color", $0.color))
            }
        }
        // data 와 색상의 관계 설정
        .chartForegroundStyleScale([
            "Green": .green,
            "Purple": .purple,
            "Pink": .pink,
            "Yellow": .yellow
        ])
    }
}

#Preview {
    StackedBarChart()
}
