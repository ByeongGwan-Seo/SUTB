//
//  Navigation.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/04.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("hello, world again", destination: MyOtherScreen())
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {Image(systemName: "person.fill")
                        })
                    .foregroundColor(.red)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "gear")
                        Image(systemName: "flame.fill")
                    }
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd Screen"))
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
