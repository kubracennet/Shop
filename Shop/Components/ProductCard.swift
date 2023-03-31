//
//  ProductCard.swift
//  Shop
//
//  Created by Kübra Cennet Yavaşoğlu on 31.03.2023.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)//köşe yarıçapı
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)//yazı tipini başlık olarak değiştiririm.
                }
                .padding()//VStack'te biraz dolgu ekleyeceğiz.
                .frame(width: 180, alignment: .leading)//çerçeve oluşturum ifyat ve ürün ismi için
                .background(.ultraThinMaterial)//bulanık arka plan eklemek için
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button {
                print("Added to cart!")
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
