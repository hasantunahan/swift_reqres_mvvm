//
//  UserCard.swift
//  swift_example
//
//  Created by HasanTunahan on 15.07.2021.
//

import SwiftUI
import Foundation
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

struct UserCard: View {
    var avatar  = ""
    var firstname = ""
    var email = ""
    
    var body: some View {
        HStack{
            AnimatedImage(url: URL(string: avatar)!)
                .resizable()
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text(firstname).bold()
                Text(email)
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
        .background(Color(.white))
        .cornerRadius(20)
        .padding(.all,5)
        .shadow(color: .gray, radius: 2, x: 0.3, y: 0.2)
        
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        UserCard()
    }
}
