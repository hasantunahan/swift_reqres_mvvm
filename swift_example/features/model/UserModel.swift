import Foundation

//MARK: - Welcome
struct Welcome: Identifiable {
    var id: ObjectIdentifier
    
    let page, perPage, total, totalPages: Int
    let data: [Datum]
    let support: Support
}

// MARK: - Datum
struct Datum: Identifiable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Identifiable {
    var id: ObjectIdentifier
    
    let url: String
    let text: String
}
