//import Foundation
//
//var eventsList = [Event]()
//
//class Event {
//    var id: String
//    var name: String!
//    var date: Date!
//    var uuid: UUID
//
//    init(name: String, date: Date) {
//        self.name = name
//        self.date = date
//        self.uuid = UUID()
//        self.id = UUID().uuidString
//    }
//
//    func eventsForDate(date: Date) -> [Event] {
//        var daysEvents = [Event]()
//        for event in eventsList {
//            if Calendar.current.isDate(event.date, inSameDayAs: date) {
//                daysEvents.append(event)
//            }
//        }
//        return daysEvents
//    }
//}


import Foundation

var eventsList = [Event]()

class Event {
    var id: String
    var name: String!
    var date: Date!
    var time: Date!
    var description: String!
    var uuid: UUID

    init(name: String, date: Date, time: Date, description: String) {
        self.name = name
        self.date = date
        self.time = time
        self.description = description
        self.uuid = UUID()
        self.id = UUID().uuidString
    }

    func eventsForDate(date: Date) -> [Event] {
        var daysEvents = [Event]()
        for event in eventsList {
            if Calendar.current.isDate(event.date, inSameDayAs: date) {
                daysEvents.append(event)
            }
        }
        return daysEvents
    }
}
