//

import Foundation

struct LoginResponseDTO: Decodable {
  let token: String
  let displayName: String
  let userId: String
}
