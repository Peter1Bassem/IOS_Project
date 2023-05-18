
//
//  Categories.swift
//  Project_Task
//
//  Created by Andrew Ihab on 11/03/2023.
//
import Foundation
import Alamofire

struct Categories:Decodable {
    var data: DataClass
}

struct DataClass:Decodable {
    var data: [Data2]
}

struct Data2:Decodable {
    var id: Int
    var name: String
    var image: String
}

struct loginRes: Decodable {
    let status: Bool
    let message: String?
    let data: loginDataRes?
}

// MARK: - DataClass
struct loginDataRes: Decodable {
    let id: Int?
    let name, email, phone: String?
    let image: String?
    let points, credit: Int?
    let token: String?
}


struct Products: Decodable {
    var data: ProductsData
}

struct ProductsData: Decodable {
    var products: [Product]
}

struct Product: Decodable {
    var id:Int?
    var name: String?
    var price: Double
    var image: String?
    var description: String?
    var images: [String]?
}




struct Banner: Decodable {
    var data: bannerarr
}

// MARK: - DataClass
struct bannerarr : Decodable {
    var banners : [Bannersdata]
}
struct Bannersdata: Decodable {
    var image: String?
}




struct CategoriesID: Decodable {
    var data: DataClass2
}

// MARK: - DataClass
struct DataClass2: Decodable {
    var data: [Datum]
}

// MARK: - Datum
struct Datum: Decodable {
    var id: Int!
    var price : Double!
    var image: String!
    var name: String!
}
