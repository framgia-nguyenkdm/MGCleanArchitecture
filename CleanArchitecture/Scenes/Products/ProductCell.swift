//
// ProductCell.swift
// CleanArchitecture
//
// Created by Tuan Truong on 6/5/18.
// Copyright © 2018 Framgia. All rights reserved.
//

import UIKit

final class ProductCell: UITableViewCell, NibReusable {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        configView(with: nil)
    }

    func configView(with model: ProductsViewModel.ProductModel?) {
        if let model = model {
            nameLabel.text = model.product.name
            priceLabel.text = String(model.product.price)
        } else {
            nameLabel.text = ""
            priceLabel.text = ""
        }
    }
}

