//
//  Darkmode.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI

struct Darkmode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    Text("This text is BLACK")
                        .foregroundColor(.black)
                    Text("This text is white")
                        .foregroundColor(.white)
                    Text("This text is RED")
                        .foregroundColor(.red)
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Practice")
        }
    }
}

struct Darkmode_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Darkmode()
                .preferredColorScheme(.dark)
            
            Darkmode()
                .preferredColorScheme(.light)
        }
        
    }
}
