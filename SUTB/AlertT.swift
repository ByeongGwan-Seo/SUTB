//
//  AlertT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct AlertT: View {
    
    //얘는 iOS16부터 쓰는 방법이 바뀌었다. 아래 방법을 참고하자
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button("show alert") {
            showAlert.toggle()
        }
        .alert("alert title", isPresented: $showAlert) {
            Button("fuck") {
                //버튼을 실행했을 때의 동작
            }
            Button("You") {
                //버튼을 실행했을 때의 동작
            }
        } message: {
            Text("Message Detail")
        }
    }
}

struct AlertT_Previews: PreviewProvider {
    static var previews: some View {
        AlertT()
    }
}
