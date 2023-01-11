//
//  Transition.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct Transition: View {
    
    @State var isShowView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                Button("button") {
                    isShowView.toggle()
                }
                Spacer()
            }
            
            if isShowView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom))
                        .animation(.easeInOut))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
