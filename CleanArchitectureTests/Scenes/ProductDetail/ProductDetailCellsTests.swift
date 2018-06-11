//
//  ProductDetailCellsTests.swift
//  CleanArchitectureTests
//
//  Created by Tuan Truong on 6/11/18.
//  Copyright © 2018 Framgia. All rights reserved.
//

@testable import CleanArchitecture
import XCTest
import RxSwift
import RxBlocking

final class ProductDetailCellsTests: XCTestCase {
    
    var nameCell: ProductNameCell!
    var priceCell: ProductPriceCell!
    
    override func setUp() {
        super.setUp()
        nameCell = ProductNameCell.loadFromNib()
        priceCell = ProductPriceCell.loadFromNib()
    }
    
    func test_iboutlets_nameCell() {
        XCTAssertNotNil(nameCell)
        XCTAssertNotNil(nameCell.nameLabel)
    }
    
    func test_iboutlets_priceCell() {
        XCTAssertNotNil(priceCell)
        XCTAssertNotNil(priceCell.priceLabel)
    }
}
