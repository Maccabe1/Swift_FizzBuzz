//
//  GaneTests.swift
//  FizzBuzzTests
//
//  Created by Gary Maccabe on 06/02/2021.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    func testGameStartsAtZero() {
      XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
            _ = game.play(move: "1")
            XCTAssertTrue(game.score == 1)
        }

        func testOnPlayTwiceScoreIncremented() {
            _ = game.play(move: "1")
            _ = game.play(move: "1")
            XCTAssertTrue(game.score == 2)
        }
    
    func testIfMoveIsRight() {
      game.score = 2
      let result = game.play(move: "Fizz")
      XCTAssertEqual(result, true)
    }
}
