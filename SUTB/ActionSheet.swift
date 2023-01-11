//
//  ActionSheet.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/05.
//

import SwiftUI

struct ActionSheet: View {
    
    //이 망할 것은 iOS15 이후로는 지원을 하지 않는다. 아래처럼 .confirmationDialog를 갖다써야함.
    
    @State private var showDialog = false
    
    var body: some View {
        Button("Show Dialog") {
            showDialog.toggle()
        }
        .confirmationDialog("title", isPresented: $showDialog, titleVisibility: .visible) {
            Button("Option 1") {
                //버튼을 눌렀을때 동작할 기능들
            }
            Button("Option 2") {
                //버튼을 눌렀을때 동장할 기능들
            }
        } message: {
            Text("message detail").bold()
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
