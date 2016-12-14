@testable import ProtoBuf
import XCTest
import KituraNet
import Kitura
import Foundation
import SwiftProtobuf

class ProtoBufTests: XCTestCase {
    
    static var allTests : [(String, (ProtoBufTests) -> () throws -> Void)] {
        return [
            ("testGet", testGet),
            ("testJSONGet", testJSONGet),
            ("testProtoGet", testProtoGet),
            ("testPost", testPost),
            ("testCardsGet", testCardsGet)
        ]
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        return formatter
    }()
    
    override class func setUp() {
        DispatchQueue(label: "Test Runloop",
                      qos: .userInitiated,
                      attributes: .concurrent).async {
                        Kitura.addHTTPServer(onPort: 8090, with: Service().router)
                        Kitura.run()
        }
        
        let semaphore = DispatchSemaphore(value: 0)
        ProtoBufTests.postCard(withPlayer: "Setup McTesterson",
                               completionHandler: { _, _, _ in
                                semaphore.signal()
        })
        _ = semaphore.wait(timeout: .distantFuture)
    }
    
    func testGet() {
        let expectation = self.expectation(description: "get")
        
        self.get(endPoint: "/",
                 acceptType: nil) {
                    (optionalData, optionalResponse, optionalError) in
                    XCTAssertNotNil(optionalResponse)
                    XCTAssertNil(optionalError)
                    guard let string = String(data: optionalData!, encoding: .utf8) else {
                        expectation.fulfill()
                        return
                    }
                    XCTAssertTrue(string.contains("It is: \(self.dateFormatter.string(from: Date()))"))
                    expectation.fulfill()
        }
        
        waitForExpectations(timeout: 20.0, handler: nil)
    }
    
    func testJSONGet() {
        let expectation = self.expectation(description: "getJSON")
        self.get(endPoint: "/card", acceptType: "application/json") {
            (optionalData, optionalResponse, optionalError) in
            
            guard let data = optionalData,
                let string = String(data: data, encoding: .utf8) else {
                    XCTAssertTrue(false)
                    expectation.fulfill()
                    return
            }
            
            XCTAssertNotNil(try! BaseballCard(json: string))
            
            expectation.fulfill()
        }
        waitForExpectations(timeout: 20.0, handler: nil)
    }
    
    func testProtoGet() {
        let expectation = self.expectation(description: "getProto")
        self.get(endPoint: "/card", acceptType: "application/octet-stream") {
            (optionalData, optionalResponse, optionalError) in
            
            guard let data = optionalData else {
                XCTAssertTrue(false)
                expectation.fulfill()
                return
            }
            
            XCTAssertNotNil(try! BaseballCard(protobuf: data))
            
            expectation.fulfill()
        }
        waitForExpectations(timeout: 20.0, handler: nil)
    }
    
    func testCardsGet() {
        let expectation = self.expectation(description: "getProtos")
        self.get(endPoint: "/cards", acceptType: "application/octet-stream") {
            (optionalData, optionalResponse, optionalError) in
            guard let data = optionalData else {
                XCTAssertTrue(false)
                expectation.fulfill()
                return
            }
            
            let allCards = try! BaseballCards(protobuf: data)
            XCTAssertNotNil(allCards)
            XCTAssertTrue(allCards.all.count > 0, "Cards: \(allCards.all.count)")
            
            expectation.fulfill()
        }
        waitForExpectations(timeout: 20.0, handler: nil)
    }
    
    func testPost() {
        let expectation = self.expectation(description: "post")
        ProtoBufTests.postCard(withPlayer: "Goofball McTesterson",
                               completionHandler: {
                                optionalData, optionalRequest, optionalError in
                                
                                guard let string = String(data: optionalData!, encoding: .utf8) else {
                                    XCTAssertTrue(false)
                                    expectation.fulfill()
                                    return
                                }
                                
                                XCTAssertNotNil(string)
                                XCTAssertTrue(string.contains("Added: Goofball McTesterson"))
                                expectation.fulfill()
        })
        waitForExpectations(timeout: 20.0, handler: nil)
    }
    
    func get(endPoint: String, acceptType: String?, completionHandler: @escaping (Data?, URLResponse?, Swift.Error?) -> Void) {
        
        guard let url = URL(string: "http://localhost:8090\(endPoint)") else {
            XCTAssertTrue(true)
            return
        }
        
        var request = URLRequest(url: url)
        if let accept = acceptType {
            request.addValue(accept, forHTTPHeaderField: "Accept")
        }
        request.httpMethod = "GET"
        URLSession(configuration: .default).dataTask(with: request,
                                                     completionHandler: completionHandler).resume()
        
    }
    
    class func postCard(withPlayer player: String,
                        completionHandler: @escaping (Data?, URLResponse?, Swift.Error?) -> Void) {
        
        let card = try! BaseballCard(json: "{}")
        
        guard let url = URL(string: "http://localhost:8090/card/") else {
            XCTAssertTrue(true)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields?["Content-Type"] = "application/octet-stream"
        request.httpBody = try! card.serializeProtobuf()
        URLSession(configuration: .default).dataTask(with: request,
                                                     completionHandler: {
                                                        (optionalData, optionalResponse, optionalError) in
                                                        
                                                        guard let httpResponse = optionalResponse as? HTTPURLResponse,
                                                            httpResponse.statusCode == 200 else {
                                                                NSLog("Status: \(optionalResponse)")
                                                                XCTAssertNil(optionalError)
                                                                return
                                                        }
                                                        completionHandler(optionalData, optionalResponse, optionalError)
        }).resume()
    }
    
    override class func tearDown() {
        Kitura.stop()
        super.tearDown()
    }
}
