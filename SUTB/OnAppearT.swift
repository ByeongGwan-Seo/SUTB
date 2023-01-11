//
//  OnAppearT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI

struct OnAppearT: View {
    
    @State private var myText: String = "Start Text"
    @State private var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                            .onDisappear() {
                                count -= 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            .navigationTitle("On appear: \(count)")
        }
    }
}

struct OnAppearT_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearT()
    }
}
