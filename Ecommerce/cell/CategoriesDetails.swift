//
//  CategoriesDetails.swift
//  Ecommerce
//
//  Created by Peter Bassem on 05/04/2023.
//

import UIKit
import Alamofire
import Kingfisher

class CategoriesDetails: UICollectionViewCell {
    static let ID = String(describing: CategoriesDetails.self)
    
    @IBOutlet weak var categoryDetailsPrice: UILabel!
    @IBOutlet weak var categoryDetailsImg: UIImageView!
    
    @IBOutlet weak var categoryDetailsName: UILabel!
    
    func setup5(with category: Datum) {
        if let name = categoryDetailsName {
            name.text = category.name
        }
        
        if let image = category.image, let url = URL(string: image), let imgView = categoryDetailsImg {
            imgView.kf.setImage(with: url)
        }
        
        if let price = categoryDetailsPrice {
            if let priceVal = category.price {
                price.text = "$ \(priceVal)"
            } else {
                price.text = "$ 0"
            }
        }
    }




}

       

