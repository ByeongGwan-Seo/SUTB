//
//  TabViewT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI

struct TabViewT: View {
    
    @State private var selectedTab: Int = 0
    
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
                }
                
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        
//        TabView(selection: $selectedTab) {
//            HomeTabView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("HOME")
//                }
//                .tag(0)
//
//            Text("BROWSE")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("BROWSE")
//                }
//                .tag(1)
//
//            Text("PROFILE")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("PROFILE")
//                }
//                .tag(2)
//        }
    }
}

struct TabViewT_Previews: PreviewProvider {
    static var previews: some View {
        TabViewT()
    }
}

struct HomeTabView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background()
                        .cornerRadius(10)
                })
            }
        }
    }
}
