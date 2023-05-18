import Alamofire

import UIKit

class CategoriesViewController:UIViewController{
    
    
    
    static let ID = String(describing: CategoriesViewController.self)
    
    @IBOutlet weak var productdetailsdesc: UILabel!
    
    @IBOutlet weak var productdetailsPrice: UILabel!
    @IBOutlet weak var productDetailsName: UILabel!
    
    private let GET_PRODUCTS_DATA = "https://student.valuxapps.com/api/categories"
    var productDetailsID: Int?
    var productDetails: Data2?
    var productsdata:[Data2] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let productId = productDetailsID {
            getProductDetails(with: productId)
        }
        print(productDetailsID)
        updateUI()
        
    }
    
    func getProductDetails(with id: Int) {
        let headers: HTTPHeaders = [
            "lang": "en"
        ]
        let url = "\(GET_PRODUCTS_DATA)/\(id)"
        print(url)
        AF.request(url, method: .get, headers: headers).responseDecodable(of: Categories.self) { response in
            switch response.result {
            case .success(let productDetails):
                self.productDetails = productDetails.data.data.first
                self.updateUI()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func updateUI() {
        if let product = productDetails {
            productDetailsName.text = product.name
            productdetailsdesc.text = product.image
            productdetailsPrice.text = "$\(product.id)"
        }
    }
}
