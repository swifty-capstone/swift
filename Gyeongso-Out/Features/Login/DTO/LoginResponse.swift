//

import Foundation

struct LoginResponse: Decodable {
  let data: LoginData
  
  struct LoginData: Decodable {
    let user: UserData
    let accessToken: String
    let refreshToken: String
  }
}

