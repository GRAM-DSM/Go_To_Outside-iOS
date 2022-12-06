import Foundation
import Moya

enum HttpService {
    // Auth
    case login(
        accountID: String,
        password: String
    )
    case studentSignup(
        accountID: String,
        password: String,
        number: String,
        name: String
    )
    case teacherSignup(
        accountID: String,
        password: String,
        name: String,
        grade: String,
        group: String,
        code: String
    )
    // Pass
    case requestGoToOutside(
        reason: String,
        outingTime: String
    )
    case getOutsideList
    case getOutsideDetail(outsideID: Int)
    case allowGoToOutside(
        incomingTime: String,
        outsideID: Int
    )
}

extension HttpService: TargetType {
    var baseURL: URL { httpBaceURL()}
    var path: String { httpPath() }
    var method: Moya.Method { httpMethod() }
    var task: Moya.Task { httpTask() }
    var headers: [String: String]? { httpHeader() }
}
