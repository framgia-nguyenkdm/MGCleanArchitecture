//
// ProductDetailViewControllerTests.swift
// CleanArchitecture
//
// Created by Tuan Truong on 6/11/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import CleanArchitecture
import XCTest
import Reusable

final class ProductDetailViewControllerTests: XCTestCase {

    var viewController: ProductDetailViewController!

    override func setUp() {
        super.setUp()
        viewController = ProductDetailViewController.instantiate()
    }

    func test_ibOutlets() {
        _ = viewController.view
        XCTAssert(true)
        XCTAssertNotNil(viewController.tableView)
    }
}
