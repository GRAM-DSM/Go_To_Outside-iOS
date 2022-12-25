import Foundation

struct PassCardModel: Codable {
    var name: String
    var number: String
    var permitStatus: String
    var resson: String
    var outingTime: String
    var incomingTime: String
    var permitter: String
}

struct PassCardLoaclModel {
    var name: String
    var number: String
    var permitStatus: String
    var resson: String
    var outingTime: String
    var incomingTime: String
    var permitter: String
}

/*
 {
     "name": "정승훈",
     "number": "1213",
     "permit_status": true,
     "reason": "너무 아파요ㅠㅠ",
     "outing_time": "11:30",
     "incoming_time": "12:30",
     "permitter": "최수장이(가) 허가함"
 }
*/
