//
//  XCTestCase+KIF.swift
//  JamesTests
//
//  Created by Leonardo Piovezan on 27/05/19.
//  Copyright © 2019 James. All rights reserved.
//

import KIF

extension XCTestCase {
  func viewTester(_ file : String = #file, _ line : Int = #line) -> KIFUIViewTestActor {
    return KIFUIViewTestActor(inFile: file, atLine: line, delegate: self)
  }
  
  func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
    return KIFUITestActor(inFile: file, atLine: line, delegate: self)
  }
  
  func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
    return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
  }
}
