//
//  DateHelper.swift
//  Helper
//
//  Created by Herlandro Hermogenes on 20/10/2020.
//

/// https://en.proft.me/2020/03/4/working-dates-swift/
/// https://stackoverflow.com/questions/325933/determine-whether-two-date-ranges-overlap/5601502#5601502

import Foundation

struct DateHelper {
    
    static func timeIntervalSamples() {
        
        /// timeIntervalSinceReferenceDate is the number of seconds since January, 1st, 2001: 12:00 am (mid night)
        /// timeIntervalSince1970 is the number of seconds since January, 1st, 1970, 12:00 am (mid night)
        /// timeIntervalSinceNow is the number of seconds since now
        
        let s0 = NSDate(timeIntervalSinceReferenceDate: TimeInterval(0))
        // it means give me the time that happens after January,1st, 2001, 12:00 am by zero seconds
        print("\(s0)") //2001-01-01 00:00:00

        let s60 = NSDate(timeIntervalSinceReferenceDate: TimeInterval(60))
        //it means give me the time that happens after January, 1st, 2001, 12:00 am by **60 seconds**
        print("\(s60)") //2001-01-01 00:01:00

        let s2 = NSDate(timeIntervalSince1970: TimeInterval(0))
        // it means give me the time that happens after January, 1st, 1970 12:00 am by **zero** seconds
        print("\(s2)") //1970-01-01 00:00:00

        let s3 = NSDate() // it means the current time
        print("\(s3)")//2015-10-25 14:12:40

        let s4 = NSDate(timeIntervalSinceNow: TimeInterval(60))
        //it means one minute (60 seconds) after the current time
        print("\(s4)") //2015-10-25 14:13:40

        let s5 = NSDate(timeIntervalSinceNow: TimeInterval(-60))
        // it means one minute (60 seconds) before the current time
        print("\(s5)") //2015-10-25 14:11:40

        let sd = NSDate(timeIntervalSinceReferenceDate: TimeInterval(60))
        // it means one minute after the reference time (January, 1st, 1970: 12:00 am)
        print("\(sd)") //2001-01-01 00:01:00
    }
    
    
}
