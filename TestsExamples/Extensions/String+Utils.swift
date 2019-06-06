//
//  String+Utils.swift
//  TestsExamples
//
//  Created by Leonardo Piovezan on 05/06/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import Foundation

extension String {
  func isValidInt() -> Bool {
    guard let _ = Int(self) else {
      return false
    }
    return true
  }
  
  func formatPhone() -> String {
    if self.count < 10 {
      return ""
    }
    let nsphone = self as NSString
    let sub1 = (nsphone.substring(from: 2) as NSString).substring(to: self.count == 10 ? 4 : 5)
    let sub2 = nsphone.substring(from: self.count == 10 ? 6 : 7)
    let cp = "(\(nsphone.substring(to: 2))) \(sub1)-\(sub2)"
    return cp
  }
}
