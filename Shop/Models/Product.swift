//
//  Product.swift
//  Shop
//
//  Created by Kübra Cennet Yavaşoğlu on 31.03.2023.
//

import Foundation

//oluşturduğum yapı , model programa oluşturduğum her ürünün(eklediğim tişört vs) hangi değişkenlere sahip olması gerektiğini söyleyecek.
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Green Dress", image: "dress1", price: 50),
                   Product(name: "Red Dress", image: "dress2", price: 100),
                   Product(name: "Black Dress", image: "dress3", price: 70),
                   Product(name: "Gray Dress", image: "dress4", price: 110),
                   Product(name: "Woman Pants", image: "pants1", price: 15),
                   Product(name: "Jean", image: "pants2", price: 40),
                   Product(name: "Man Shirt", image: "shirt1", price: 70),
                   Product(name: "Blue Shirt", image: "shirt2", price: 30),
                   Product(name: "White Sweater", image: "sweater1", price: 40),
                   Product(name: "Woman Sweater", image: "sweater2", price: 30),
                   Product(name: "Unisex T-Shirt", image: "t-shirt1", price: 70),
                   Product(name: "Man T-Shirt", image: "t-shirt2", price: 50),
                   Product(name: "White T-Shirt", image: "t-shirt1", price: 30),


]
