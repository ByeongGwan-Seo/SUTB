//
//  AsyncImageT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/09.
//

import SwiftUI

/*
 case empty -> no image is loaded
 
 case success(Image) -> image sucessfully loaded
 
 case failure(error) -> image failed to load with an error
 */
struct AsyncImageT: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
//        AsyncImage(url: url,
//                   content: {returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        },
//                   placeholder: {
//            ProgressView()
//        })
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width:100, height:100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

struct AsyncImageT_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageT()
    }
}
