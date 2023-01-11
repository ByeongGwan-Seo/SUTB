//
//  TapGestureT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/08.
//

import SwiftUI

//.onTapGesture : 두번 탭, 세번 탭 등등 다양하게 사용 가능

struct TapGestureT: View {
    
    @State private var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
            //onTapGesture랑 button 어느걸 더 많이 쓰지...?
            //실무에서 사용하는 것에 차이가 있나? 애초에 온탭제스처를 쓰기는 하나?
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
            
        }
    }
}

struct TapGestureT_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureT()
    }
}
