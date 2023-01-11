//
//  ContextMenuT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/05.
//

import SwiftUI

//해당 위치를 꾹 눌렀을때 튀어나오는 버튼 모음ㅇㅇ

struct ContextMenuT: View {
    
    @State var backgroundColor: Color = Color(.blue)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("blablablabla")
                .font(.headline)
            Text("how to use context menu")
                .font(.headline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .purple
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenuT_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuT()
    }
}
