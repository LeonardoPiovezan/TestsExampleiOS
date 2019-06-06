//
//  KIF+Utils.swift
//  JamesTests
//
//  Created by Leonardo Piovezan on 27/05/19.
//  Copyright © 2019 James. All rights reserved.
//

import KIF

extension KIFTestActor {
  func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
    return KIFUITestActor(inFile: file, atLine: line, delegate: self)
  }
  
  func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
    return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
  }
}

extension KIFTestCase {
  func expectToSee(_ accessibilityLabel: String) {
    tester().waitForView(withAccessibilityLabel: accessibilityLabel)
  }
  
  func expectNotToSee(_ accessibilityLabel: String) {
    tester().waitForAbsenceOfView(withAccessibilityLabel: accessibilityLabel)
  }
  
  func tapOnView(_ accessibilityLabel: String) {
    tester().tapView(withAccessibilityLabel: accessibilityLabel)
  }
  
  func getView(_ accessibilityLabel:String) -> UIView {
    return tester().waitForView(withAccessibilityLabel: accessibilityLabel)
  }
  
  func tapOnTableViewCell(indexPath: IndexPath, tableView: UITableView) {
    tester().tapRow(at: indexPath, in: tableView)
  }
  
  func insertText( _ text: String, label: String) {
    tester().clearText(fromAndThenEnterText: text, intoViewWithAccessibilityLabel: label)
  }
}
