//
//  ContentView.swift
//  Crypto Balance
//
//  Created by Mohsen Abdollahi on 8/28/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var rates: [Coin] = [
        Coin(id: "BTC", name: "Bitcoin", price: "9733.95", icon: "bitcoin"),
        Coin(id: "LTC", name: "Litecoin", price: "78.70", icon: "litecoin"),
        Coin(id: "XIP", name: "Ripple", price: "0.30", icon: "ripple"),
        Coin(id: "TRX", name: "Tron", price: "0.02", icon: "tron"),
        Coin(id: "ETH", name: "Ethreum", price: "200.45", icon: "ethereum")
    ]
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                Text("your Crypto Balance")
                Text("$ 3.133.7").font(.largeTitle).fontWeight(.heavy)
                
                List {
                    
                    Section(header: Text("Current Prices")) {
                        ForEach(rates){ item in
                            HStack {
                                Text("\(item.id)")
                                Text("\(item.name)")
                            }
                        }
                        
                    }
                }.listStyle(GroupedListStyle())
            }
            .navigationBarTitle(Text("Dashboard"))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Coin : Identifiable {
    
    let id: String
    let name: String
    let price: String
    let icon: String
}
