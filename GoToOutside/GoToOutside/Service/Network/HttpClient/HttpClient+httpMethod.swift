import Foundation
import Moya

extension HttpService {
    func httpMethod() -> Moya.Method {
        switch self {
        case .login, .teacherSignup, .studentSignup, .requestGoToOutside:
            return .post
        case .getOutsideList, .getOutsideDetail:
            return .get
        case .allowGoToOutside:
            return .patch
        }
    }
}
