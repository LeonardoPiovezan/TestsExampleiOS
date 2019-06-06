//
//  StringUtilsSpec.swift
//  TestsExamplesTests
//
//  Created by Leonardo Piovezan on 05/06/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import Quick
import Nimble

@testable import TestsExamples

final class StringUtilsSpec: QuickSpec {
  override func spec() {

    describe("String Util Behaviour") {

      context("Test isValidInt Function") {
        it("Test Return True If Valid Int") {
          let numberString = "10"
          expect(numberString.isValidInt()).to(beTrue())
        }

        it("Test Return False If Invalid Int") {
          let notNumberString = "as"
          expect(notNumberString.isValidInt()).to(beFalse())
        }

        it("Test Return False If Empty Strig") {
          let emptyString = ""
          expect(emptyString.isValidInt()).to(beFalse())

        }
      }

      context("Test formatPhone Function") {
        it("Test If Formatted When Number String") {
          let formattedNumberString = "4199999999".formatPhone()
          expect(formattedNumberString).to(equal("(41) 9999-9999"))
        }

        it("Test If Result is Empty When Non Number String") {
          let formattedNumberString = "Text".formatPhone()
          expect(formattedNumberString).to(equal(""))
        }
      }

    }
  }
}
