//
//  BaseTestCase.swift
//  DVT-WeatherApp-AdonisRumbwereTests
//
//  Created by adonis rumbwere on 17/12/2019.
//  Copyright © 2019 Adonis Rumbwere. All rights reserved.
//

import Alamofire
import Foundation
import XCTest

class BaseTestCase: XCTestCase {
    let timeout: TimeInterval = 10

    static var testDirectoryURL: URL { return FileManager.temporaryDirectoryURL.appendingPathComponent("org.alamofire.tests") }
    var testDirectoryURL: URL { return BaseTestCase.testDirectoryURL }

    override func setUp() {
        super.setUp()

        FileManager.removeAllItemsInsideDirectory(at: testDirectoryURL)
        FileManager.createDirectory(at: testDirectoryURL)
    }

    func url(forResource fileName: String, withExtension ext: String) -> URL {
        let bundle = Bundle(for: BaseTestCase.self)
        return bundle.url(forResource: fileName, withExtension: ext)!
    }

    /// Runs assertions on a particular `DispatchQueue`.
    ///
    /// - Parameters:
    ///   - queue: The `DispatchQueue` on which to run the assertions.
    ///   - assertions: Closure containing assertions to run
    func assert(on queue: DispatchQueue, assertions: @escaping () -> Void) {
        let expect = expectation(description: "all assertions are complete")

        queue.async {
            assertions()
            expect.fulfill()
        }

        waitForExpectations(timeout: timeout)
    }
}
