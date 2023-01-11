//
//  SwipeActionT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/10.
//

import SwiftUI

struct SwipeActionT: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id:\.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.black)
                        Button("Junk") {
                            
                        }
                        .tint(.blue)
                    }
                
                    .swipeActions(edge: .leading,
                                  allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                        
                    }
                
                
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct SwipeActionT_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionT()
    }
}
