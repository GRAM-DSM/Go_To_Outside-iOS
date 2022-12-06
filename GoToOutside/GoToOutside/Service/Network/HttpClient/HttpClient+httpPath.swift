import Foundation

extension HttpService {
    func httpPath() -> String {
        switch self {
        case .login:
            return "/login"
        case .studentSignup:
            return "/student/signup"
        case .teacherSignup:
            return "/student/signup"
        case .requestGoToOutside:
            return "/pass"
        case .getOutsideList:
            return "/pass"
        case .getOutsideDetail(let outsideID):
            return "/pass/\(outsideID)"
        case .allowGoToOutside(_, let outsideID):
            return "/pass/\(outsideID)"
        }
    }
}
