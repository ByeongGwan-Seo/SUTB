//
//  BadgeT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/10.
//

import SwiftUI


//badge는 listRow랑 탭뷰에서만 사용 가능하다.
struct BadgeT: View {
    var body: some View {
        
        List {
            Text("Hello")
            Text("Hello")
            Text("Hello")
                .badge("New Items")
            Text("Hello")
            Text("Hello")
                .badge(5)
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//                .badge(2)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//                .badge("new")
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//        }
    }
}

struct BadgeT_Previews: PreviewProvider {
    static var previews: some View {
        BadgeT()
    }
}
