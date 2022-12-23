import Foundation
import Moya

class LoginViewModel: ObservableObject {
    var httpService = MoyaProvider<HttpService>()
    @Published var accountID = ""
    @Published var password = ""
    @Published var isSuccess = false
    func login() {
        httpService.request(.login(accountID: accountID, password: password)) { res in
            switch res {
            case .success(let result):
                switch result.statusCode {
                case 200:
                    print("로그인 성공")
                    self.isSuccess = true
                default:
                    print(result.statusCode)
                }
            case .failure(let err):
                print("login err\(err.localizedDescription)")
            }
        }
    }
}
