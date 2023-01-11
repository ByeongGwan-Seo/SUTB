//
//  Ternary.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct Ternary: View {
    
    @State private var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
 
            Spacer()
        }
    }
}

struct Ternary_Previews: PreviewProvider {
    static var previews: some View {
        Ternary()
    }
}
