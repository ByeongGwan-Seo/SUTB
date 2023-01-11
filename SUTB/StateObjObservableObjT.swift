//
//  StateObjObservableObjT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/09.
//


//StateObject 초기화할때 생성되고 초기화된 객체가 있으면 다시 stateObject를 생성할 필요없이 Observable 프로토콜로 받아서 다시 사용한다.

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
   @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 3)
        let fruit3 = FruitModel(name: "Strawberry", count: 50)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}


struct StateObjObservableObjT: View {

    //view한테 이제 변경이 있을 거니까 업데이트하라고 말해주는 친구가 있어야함.
    //아래 친구는 그냥 fruitViewModel을 새로 만든것.
//    var fruitViewModel: FruitViewModel = FruitViewModel()
    
    //view한테 fruitViewModel에 변경이 있으면 업데이트 해라
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    //어떤 사유로든 리프레시가 되면 뷰를 새로 불러온다.
    
    //@StateObject -> USE THIS ON CREATION / INIT
    //@ObservedObject -> USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel),
                                   label: {
                                        Image(systemName: "arrow.right")
                                            .font(.title)
                    })
                    
                }
            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct StateObjObservableObjT_Previews: PreviewProvider {
    static var previews: some View {
        StateObjObservableObjT()
//        RandomScreen()
    }
}
