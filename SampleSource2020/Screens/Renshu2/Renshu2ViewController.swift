//
//  Renshu2ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/10.
//

import UIKit

// 多次元配列のイメージ
// https://it-level-up.club/java/java-section3/post-809/#i-3
// https://www.google.com/search?q=%E4%BA%8C%E6%AC%A1%E5%85%83%E9%85%8D%E5%88%97&tbm=isch&ved=2ahUKEwjo3ublgqnpAhUQTZQKHVqYCuYQ2-cCegQIABAA&oq=%E4%BA%8C%E6%AC%A1%E5%85%83%E9%85%8D%E5%88%97&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADIECAAQHjIECAAQGDIECAAQGDIECAAQGDIECAAQGDIGCAAQBRAeMgYIABAFEB46BAgAEAQ6BwgjEOoCECc6BAgjECc6BwgAEIMBEAQ6BggAEAQQGFDDgApYw6EKYM2lCmgFcAB4AoAB4AGIAbAUkgEGMTguNS4ymAEAoAEBqgELZ3dzLXdpei1pbWewAQo&sclient=img&ei=os63XuiFCZCa0QTasKqwDg&bih=946&biw=1295

class Renshu2ViewController: UIViewController {
    /// サンプルの商品クラス
    class Item {
        var id: Int
        var title: String
        var price: Int
        
        init(id: Int, title: String, price: Int) {
            self.id = id
            self.title = title
            self.price = price
        }
    }

    
    
    
    
    // 普通の配列
    var items: [Item] = []
    
    // 2次元の配列
    var itemsDoub: [[Item]] = []
    
    // 3次元の配列
    var itemsTri: [[[Item]]] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let i1 = Item(id: 0, title: "たいとる1", price: 1000)
        let i2 = Item(id: 1, title: "たいとる2", price: 2000)
        let i3 = Item(id: 2, title: "たいとる3", price: 3000)
        
        // 配列にItemを一つ入れる
        items.append(i1)
        
        // 練習5
        // これ↓はエラーになる, なぜエラーになる？
        // itemsDoub.append(i1)
        
        // これは配列
        let itemList = [i1, i2, i3]
        
        // 二次元配列に、Itemの配列を一つ入れる
        itemsDoub.append(itemList)
        
        // 練習6
        // これ↓はエラーになる、なぜエラーになる？
        // itemsTri.append(itemList)
        
        // 練習7
        // これ↓はエラーにならない、なぜエラーに成らない？
        // itemsTri.append([[i1]])
        
        nextRenshu1()
        nextRenshu2()
    }
    
    func nextRenshu1() {
        // 宣言
        var items: [[Item]] = []
        
        // 10 x 10で二次元配列を作る
        for i in 0...10 {
            var list: [Item] = []
            for j in 0...10 {
                let item = Item(id: i * 10 + j, title: "\(i) - \(j)", price: 0)
                // 配列を作って
                list.append(item)
            }
            // forが終わったら配列を二次元配列に入れる
            items.append(list)
        }
        
        // 練習8　何が表示される？
        print(items[5][2].title)
        
        // 練習9　何が表示される？
        print(items[5][2].id)
        
        // 練習10 何が表示される？
        print(items[5].count)
    }
    
    func nextRenshu2() {
        // 練習11　（※難しいから、余裕あったら）
        // nextRenshu1を参考にして、ここに3次元配列を作る（5x5x5）
        // idは 「i * 100 + j * 10 + k」
        // titleは　「"\(i) - \(j) - \(k)"

        
        // 以下が「2 - 3 - 4」になることを確認する
        // print(items[2][3][4].title)
    }
    
}
