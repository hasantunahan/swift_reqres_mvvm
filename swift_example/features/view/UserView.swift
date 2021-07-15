//
//  UserView.swift
//  swift_example
//
//  Created by HasanTunahan on 15.07.2021.
//

import SwiftUI
import Foundation
import Alamofire
import SwiftyJSON

struct UserView: View {
    
    @ObservedObject var dataSource = UserViewModel()
    
    var body: some View {
        
        
        ZStack{
            VStack(alignment: .leading){
                Text("UserList").bold().font(.system(size: 24,weight: .medium)).padding(10)
                UserListWidget(dataSource: dataSource.datas)
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
        }
        
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserListWidget: View {
    var dataSource = [Datum]();
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            ForEach(dataSource) {item in
                UserCard(avatar: item.avatar , firstname: item.firstName+" "+item.lastName,email: item.email)
            }
        }
    }
}
