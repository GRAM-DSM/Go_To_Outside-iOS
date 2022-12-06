import Foundation

extension HttpService {
    func httpHeader() -> [String : String]? {
        switch self {
            
        case .login, .teacherSignup, .studentSignup:
            return Header.tokenIsEmpty.header()
        case .requestGoToOutside, .getOutsideList, .getOutsideDetail, .allowGoToOutside:
            return Header.accessToken.header()
        }
    }
}
