//
//  EnvironmentObjectT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/09.
//


//같은 계층구조 안에 있는 모든 뷰에서 데이터를 공유할 수 있음
//백그라운드에 있든 어디에 있든 참조할 수 있다는게 장점
//stateObject, observedObject보다 진화된 개념

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectT: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id:\.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item),
                                   label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("iOS devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: FinalView(),
                           label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id:\.self) {
                        item in Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectT_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectT()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
