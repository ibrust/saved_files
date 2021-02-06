import Foundation

extension String {
    func to_date(format: String) -> Date? {
        let df = DateFormatter()
        df.dateFormat = format
        return df.date(from: self)
    }
}

extension Date {
    func to_string(format: String) -> String {
        let df = DateFormatter()
        df.dateFormat = format
        return df.string(from: self)
    }
}

/*
let strDate = "2020-08-10 15:00:00"
let date = strDate.toDate(format: "yyyy-MM-dd HH:mm:ss")
let strDate2 = date?.toString(format: "yyyy-MM-dd HH:mm:ss")
*/