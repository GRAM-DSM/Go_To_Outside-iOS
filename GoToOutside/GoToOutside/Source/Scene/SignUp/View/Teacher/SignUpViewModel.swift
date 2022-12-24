import Foundation

class SignUpViewModel: ObservableObject {
    @Published var accountID: String = ""
    @Published var accountPassword: String = ""
    @Published var accountName: String = ""
    @Published var accountNumber: String = ""
    @Published var accountGrade: String = ""
    @Published var accountClass: String = ""
    @Published var accessCode: String = ""
}
