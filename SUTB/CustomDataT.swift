//
//  CustomDataT.swift
//  SUTB
//
//  Created by seobyeonggwan on 2022/11/08.
//

import SwiftUI


//identifiable과 hashable의 차이는 뭔가...?
struct UserModel: Identifiable {
    //UUID 무작위로 생성된 아이디, uuidString은 스트링으로 반환
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomDataT: View {
    
    @State private var users: [UserModel] = [
//    "nick", "emily", "sam", "chris"
        UserModel(displayName: "nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "tom", userName: "killJerry", followerCount: 39, isVerified: false),
        UserModel(displayName: "jerry", userName: "killTom", followerCount: 50, isVerified: false),
        UserModel(displayName: "chris", userName: "cheese13", followerCount: 23, isVerified: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct CustomDataT_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataT()
    }
}
