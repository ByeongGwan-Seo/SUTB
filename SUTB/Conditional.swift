//
//  Conditional.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct Conditional: View {
    
    @State private var showCircle:Bool = false
    @State private var showRectangle:Bool = false
    @State private var isLoading:Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                
            }
            
//            Button("circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }
            
//            if !showCircle {
//                Circle()
//                    .frame(width: 100, height:100)
//            }
            Spacer()
        }
    }
}

struct Conditional_Previews: PreviewProvider {
    static var previews: some View {
        Conditional()
    }
}
