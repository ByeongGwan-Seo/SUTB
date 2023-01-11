//
//  SliderT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI


//accentColor 대신에 .tint를 사용할 수 있다.

struct SliderT: View {
    
    @State private var sliderValue: Double = 3
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
//                "\(sliderValue)"
            )
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Slider Title")
                }
            )
        }
    }
}

struct SliderT_Previews: PreviewProvider {
    static var previews: some View {
        SliderT()
    }
}
