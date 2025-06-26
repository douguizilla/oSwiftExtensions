//
//  DateExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Date {
    
    // MARK: Parse to String by format
    
    func toString(
        format: String = .DATE_ISO_8601_FORMAT,
        timeZone: TimeZone? = nil
    ) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        if let timeZone = timeZone {
            dateFormatter.timeZone = timeZone
        }
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter.string(from: self)
    }
    
    // MARK: Equality
    
    func isEqual(
        to date: Date,
        toGranularity granularity: Calendar.Component,
        in calendar: Calendar = .current
    ) -> Bool {
        return calendar.isDate(self, equalTo: date, toGranularity: granularity)
    }
    
    func isInSameYear(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .year)
    }
    
    func isInSameMonth(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .month)
    }
    
    func isInSameDay(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .day)
    }
    
    func isInSameWeek(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .weekOfYear)
    }
    
    func isInSameHour(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .hour)
    }
    
    // MARK: Reset Date to start
    
    func normalizedToDay() -> Date {
        let calendar = Calendar.current
        return calendar.startOfDay(for: self)
    }
    
    // MARK: Counter
    
    func daysBetween(to date: Date, inverted: Bool = false) -> Int {
        let date1 = inverted ? date : self
        let date2 = inverted ? self : date
        
        let dateComponents = Calendar.current.dateComponents(
            [.day],
            from: date1.normalizedToDay(),
            to: date2.normalizedToDay()
        )
        
        return dateComponents.day ?? 0
    }
}
