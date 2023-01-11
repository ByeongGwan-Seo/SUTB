//
//  IfLetGuardT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/08.
//

import SwiftUI

struct IfLetGuardT: View {
    
    @State var currentUserID: String? = "testuser"
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                //!는 쓰는거 아니다
                //강제로 언랩하지 마라 높은 확률로 깨진다
                //가능하면 optional은 guard로
                //옵셔널 언래핑은 추가 공부 좀 해야할 듯.
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("safe coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data user id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error: there is no user id"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. there is no id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data user id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardT_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardT()
    }
}
