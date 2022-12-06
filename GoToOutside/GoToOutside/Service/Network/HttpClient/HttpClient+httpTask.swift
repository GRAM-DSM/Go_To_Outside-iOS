import Foundation
import Moya

extension HttpService {
    func httpTask() -> Moya.Task {
        switch self {
        case .login(let accountID, let password):
            return .requestParameters(
                parameters: [
                    "account_id": accountID,
                    "password": password
                ],
                encoding: JSONEncoding.default)
        case .studentSignup(let accountID, let password, let number, let name):
            return .requestParameters(
                parameters: [
                    "account_id": accountID,
                    "password": password,
                    "number": number,
                    "name": name
                ],
                encoding: JSONEncoding.default)
        case .teacherSignup(let accountID, let password, let name, let grade, let group, let code):
            return .requestParameters(
                parameters: [
                    "account_id": accountID,
                    "password": password,
                    "name": name,
                    "grade": grade,
                    "group": group,
                    "code": code
                ],
                encoding: JSONEncoding.default)
        case .requestGoToOutside(let reason, let outingTime):
            return .requestParameters(
                parameters: [
                    "reason": reason,
                    "outingTime": outingTime
                ],
                encoding: JSONEncoding.default)
        case .allowGoToOutside(let incomingTime, _):
            return .requestParameters(
                parameters: [
                    "incoming_time": incomingTime
                ],
                encoding: JSONEncoding.default)
        case .getOutsideList, .getOutsideDetail:
            return .requestPlain
        }
    }
}
