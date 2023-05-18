//
//  ProductCell.swift
//  Ecommerce
//
//  Created by Peter Bassem on 05/04/2023.
//

import UIKit

class ProductCell: UICollectionViewCell {
    static let ID = String(describing: ProductCell.self)
    
    
    @IBOutlet weak var productname: UILabel!
    
    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var productprice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("ProductCell initialized and subviews are tappable")
    }
    
    
    func setup2(with products:Product){
           
        productname.text = products.name
        productprice.text = "$ \(products.price)"
        productImg.kf.setImage(with: URL(string: products.image!))
           
           
           
       }
}


