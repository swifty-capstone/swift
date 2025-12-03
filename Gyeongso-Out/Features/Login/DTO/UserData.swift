//

import Foundation

struct UserData: Decodable {
  let id: Int
  let studentId: String
  let name: String
  let email: String
  let studentClass: Int
  let grade: Int
  let role: String
  
  enum CodingKeys: String, CodingKey {
    case id
    case studentId
    case name
    case email
    case studentClass = "class"
    case grade
    case role
  }
  
}
