//
//  ToggleT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/07.
//

import SwiftUI

struct ToggleT: View {
    
    @State private var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn,
                   label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleT_Previews: PreviewProvider {
    static var previews: some View {
        ToggleT()
    }
}
