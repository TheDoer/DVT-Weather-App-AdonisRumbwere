//
//  DVT_WeatherApp_AdonisRumbwereTests.swift
//  DVT-WeatherApp-AdonisRumbwereTests
//
//  Created by adonis rumbwere on 9/12/2019.
//  Copyright © 2019 Adonis Rumbwere. All rights reserved.
//

import XCTest
@testable import DVT_WeatherApp_AdonisRumbwere

class DVT_WeatherApp_AdonisRumbwereTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let e = expectation(description: "Alamofire")

        Alamofire.request(urlString)
            .response { response in
                XCTAssertNil(response.error, "Whoops, error \(response.error!.localizedDescription)")

                XCTAssertNotNil(response, "No response")
                XCTAssertEqual(response.response?.statusCode ?? 0, 200, "Status code not 200")

                e.fulfill()
        }

        waitForExpectations(timeout: 5.0, handler: nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
