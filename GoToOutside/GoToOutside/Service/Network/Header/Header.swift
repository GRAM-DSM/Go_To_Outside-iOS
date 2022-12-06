import Foundation
import SwiftKeychainWrapper

struct Token {
    static var publicAccessToken: String?
    static var accessToken: String? {
        get {
            publicAccessToken = KeychainWrapper.standard.string(forKey: "accessToken")
            return publicAccessToken
        }
        set(newToken) {
            publicAccessToken = newToken
            KeychainWrapper.standard.set(newToken ?? "", forKey: "accessToken")
        }
    }
    static var publicRefreshToken: String?
    static var refreshToken: String? {
        get {
            publicRefreshToken = KeychainWrapper.standard.string(forKey: "refreshToken")
            return publicAccessToken
        }
        set(newToken) {
            publicAccessToken = newToken
            KeychainWrapper.standard.set(newToken ?? "", forKey: "refreshToken")
        }
    }
    static func removeToken() {
        refreshToken = nil
        accessToken = nil
    }
}
enum Header {
    case accessToken, refreshToken, tokenIsEmpty
    func header() -> [String: String]? {
        guard let token = Token.accessToken else {
            return ["Content-Type": "application/json"]
        }
        guard let refreshToken = Token.refreshToken else {
            return ["Content-Type": "application/json"]
        }
        switch self {
        case .accessToken:
            return ["Authorization": "Bearer " + token, "Content-Type": "application/json"]
        case .refreshToken:
            return ["Authorization": "Bearer " + refreshToken, "Content-Type": "application/json"]
        case .tokenIsEmpty:
            return ["Content-Type": "application/json"]
        }
    }
}
