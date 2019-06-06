//
//  LoginViewTests.swift
//  TestsExamplesTests
//
//  Created by Leonardo Piovezan on 06/06/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import KIF

final class LoginViewTests: KIFTestCase {

  func testOpenApp() {
    insertText("leozao@leozao.com", label: "digite seu email")
    insertText("narutinho", label: "digite sua senha")
    tester().wait(forTimeInterval: 2)
  }
}
