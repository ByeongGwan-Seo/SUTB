//
//  BackgroundMaterialT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/10.
//

import SwiftUI

struct BackgroundMaterialT: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("asd")
                .resizable()
                .scaledToFit()
        )
    }
}

struct BackgroundMaterialT_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialT()
    }
}
