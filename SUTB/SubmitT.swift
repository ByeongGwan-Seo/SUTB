//
//  SubmitT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/10.
//

import SwiftUI

struct SubmitT: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text:$text)
                .submitLabel(.route)
                .onSubmit {
                    print("on Console: \(text)")
            }
            
            TextField("Placeholder", text:$text)
                .submitLabel(.next)
                .onSubmit {
                    print("on Console: \(text)")
            }
            
            TextField("Placeholder", text:$text)
                .submitLabel(.search)
                .onSubmit {
                    print("on Console: \(text)")
            }
        }
    }
}

struct SubmitT_Previews: PreviewProvider {
    static var previews: some View {
        SubmitT()
    }
}
