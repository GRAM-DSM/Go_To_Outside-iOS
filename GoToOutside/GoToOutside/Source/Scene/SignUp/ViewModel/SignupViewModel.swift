import Foundation

class SignupViewModel: ObservableObject {
    @Published var accountID: String = ""
    @Published var accountPassword: String = ""
    @Published var accountNumber: String = ""
    @Published var accountName: String = ""
}
