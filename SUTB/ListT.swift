//
//  ListT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct ListT: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")
                    .font(.headline)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id:\.self) {fruit in Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.teal)
                }
                
                Section(header: Text("Veggies")
                    .font(.headline)
                    .foregroundColor(.green)
                ) {
                    ForEach(veggies, id:\.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}


struct ListT_Previews: PreviewProvider {
    static var previews: some View {
        ListT()
    }
}
