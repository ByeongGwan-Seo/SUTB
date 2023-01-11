//
//  AppStorageT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/09.
//

import SwiftUI

struct AppStorageT: View {
    
//    @State private var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            //!를 사용한 강제 언래핑은 굉장히 위험하다.
            //?? -> 만약 이게 nil이면 뭐라고 표시할 거니?
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Gom"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageT_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageT()
    }
}
