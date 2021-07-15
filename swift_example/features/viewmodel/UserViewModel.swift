//
//  UserViewModel.swift
//  swift_example
//
//  Created by HasanTunahan on 15.07.2021.
//

import Foundation
import Alamofire
import SwiftyJSON




class UserViewModel : ObservableObject{
    
    @Published var datas = [Datum]()
    
    func funfetchAllDatum() {
        AF.request("https://reqres.in/api/users").responseData { (data) in
            let json = try! JSON(data : data.data!)
            let datum = json["data"]
            for i in datum {
                self.datas.append(Datum(id: i.1["id"].intValue, email: i.1["email"].stringValue, firstName: i.1["first_name"].stringValue,lastName: i.1["last_name"].stringValue, avatar: i.1["avatar"].stringValue))
                print(i.1)
            }
        }
    }
    
    
    init() {
        funfetchAllDatum()
    }
        
}
