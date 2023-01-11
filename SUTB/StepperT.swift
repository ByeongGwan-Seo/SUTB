//
//  StepperT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI


//what is Strideable?

struct StepperT: View {
    
    @State private var stepperValue: Int = 10
    @State private var widthIncrement: CGFloat = 10
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
                    incrementWidth(amount: 100)
                } onDecrement: {
                    incrementWidth(amount: -100)
                }
            }
        }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperT_Previews: PreviewProvider {
    static var previews: some View {
        StepperT()
    }
}
