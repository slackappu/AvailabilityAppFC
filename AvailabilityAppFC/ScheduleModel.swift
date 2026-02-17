import SwiftUI

let schoolHolidays: [String] = [
    "09-01-2025",
    "09-23-2025",
    "10-02-2025",
    "10-13-2025",
    "11-26-2025",
    "11-27-2025",
    "11-28-2025",
    "12-17-2025",
    "12-18-2025",
    "12-19-2025",
    "12-20-2025",
    "12-21-2025",
    "12-22-2025",
    "12-23-2025",
    "12-24-2025",
    "12-25-2025",
    "12-26-2025",
    "12-27-2025",
    "12-28-2025",
    "12-29-2025",
    "12-30-2025",
    "12-31-2025",
    "01-01-2026",
    "01-02-2026",
    "01-03-2026",
    "01-04-2026",
    "01-05-2026",
    "01-06-2026",
    "01-19-2026",
    "02-16-2026",
    "03-23-2026",
    "03-24-2026",
    "03-25-2026",
    "03-26-2026",
    "03-27-2026",
    "04-03-2026",
    "04-08-2026",
    "04-09-2026",
    "05-25-2026",
    "05-27-2026",
    "05-28-2026",
    "05-29-2026"
]


func isSchoolDay(_ date: Date) -> Bool {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        
        if weekday == 1 || weekday == 7 {
            return false
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let dateString = dateFormatter.string(from: date)
        
        if schoolHolidays.contains(dateString) {
            return false
        }
        
        return true
    }

func isADay(for date: Date) -> Bool {
    let calendar = Calendar.current
    let startDate = calendar.date(from:DateComponents(year: 2025, month: 8, day: 13))!
    
    var current = startDate
    var schoolDayCount = 0
    
    while current <= date {
        if isSchoolDay(current) {
            schoolDayCount += 1
        }
        current = calendar.date(byAdding: .day, value: 1, to: current)!
    }
    
    return schoolDayCount % 2 == 0
    
}

 
