import Foundation

struct Account: Codable {
  let name: AccountName
  let manager: AccountName
  let balance: Double
  let staking: Double
  let cycle: Int
  
  enum CodingKeys: String, CodingKey {
    case name
    case manager
    case balance
    case cycle
    case staking = "staking_balance"
  }
  
  var address: String {
    return name.tz
  }
}

struct AccountName: Codable {
  let tz: String
}
