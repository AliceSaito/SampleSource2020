//
//  RenshuEnumViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/02.
//

// Enumの練習

import UIKit

class RenshuEnumViewController: UIViewController {

    // ①カラー
    enum Color {
        case red
        case blue
        case white
        case black
        case gray
    }

    // ②サイズ
    enum SizeType: Int {
        case small      = 0
        case midium     = 1
        case large      = 2
        case xl         = 10
    }

    // ③カテゴリー
    enum Category: String {
        case tops
        case outer
        case pants
        case skirt
        case onePiece
    }
    
    // 服
    struct Clothes {
        var title: String
        var category: Category
        var size: SizeType
        var color: Color
    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        
        // Enumは列挙型、有限集合を一つのグループにして名前をつけたもの

        // ①カラーのように、何も型がなくても作ることが出来る

        let color1 = Color.red
        let color2 = Color.blue
        if color1 == .red {
            print("color1は赤")
        }
        if color2 == .red {
            print("color2は赤")
        }
        
        // ②サイズのように、Int型にすることができる
        // enum SizeType: Int { }
        // このとき、見た目は.smallとか、.midiumが使われる
        // しかし内部ではIntが入っている、それはrawValueで手に入る
        
        let size1 = SizeType.small          // size1という変数には.smallが入る
        print(size1.rawValue)               // これは0
        let size2 = SizeType(rawValue: 1)!  // rawValueで指定、size2には.midiumが入る
        print(size2)                        // これはmidium
        
        // このように条件分岐が書けるし
        if size2 == .large {
            // todo
        }
        // このようにも書ける
        if size2.rawValue == 2 {
            // todo
        }
        
        // ③カテゴリーのように、String型にして、rawValue(= "tops"の部分のこと)を設定しないと、自動的にcaseの名前がrawValueとなる
        // 以下は③カテゴリーと等価
//        enum Category: String {
//            case tops = "tops"
//            case outer = "outer"
//            case pants = "pants"
//            case skirt = "skirt"
//            case onePiece = "onePiece"
//        }
        
        
        //課題1 Categoryのcaseをすべて作成して、配列に詰めて、すべてprintする
        let c = Category.tops
        print(c)
        
        let all:[Category] = [.tops, .outer, .pants, .skirt, .onePiece]
        for ca in all {
           print(ca)
        }
        
        
        //課題2 Categoryのcaseをすべて文字列から作成して、配列に詰めて、すべてprintする
        let t = Category(rawValue: "tops")!
        print(t)
        
        let allStr:[Category] = [Category(rawValue: "tops")!,
                                 Category(rawValue: "outer")!,
                                 Category(rawValue: "pants")!,
                                 Category(rawValue: "skirt")!,
                                 Category(rawValue: "onePiece")!]
        
        allStr.forEach {
            print($0)
        }
        
        
        //課題3 今、ある服の情報が以下のように与えられている
        //     これらのうち、色がredであるもののタイトルをすべてprintする
        let array = [Clothes(title: "nano-universe", category: .tops, size: .large, color: .white),
                     Clothes(title: "anown", category: .tops, size: .midium, color: .blue),
                     Clothes(title: "THE NORTH FACE/Novelty Compact Jacket", category: .outer, size: .small, color: .blue),
                     Clothes(title: "ブッチャープリント 2Bジャケット", category: .outer, size: .xl, color: .red),
                     Clothes(title: "MGV", category: .pants, size: .small, color: .blue),
                     Clothes(title: "楊柳シフォンスカート", category: .skirt, size: .large, color: .white),
                     Clothes(title: "ABITOKYO", category: .skirt, size: .large, color: .black)]
                      
        
        array.forEach {
            if $0.color == Color.red {
                print($0.title)
            }
        }
        
        //別解
        for cl in array {
            if cl.color == Color.red {
                print(cl.title)
            }
        }
        //別解
        array.forEach { (cl) in
            if cl.color == Color.red {
                print(cl.title)
            }
        }
        
        //下は構文として覚える。arrayの中身を一つずつcに詰めて処理を実行する
        array.forEach { (c) in
            //処理
        }
        
        let getPrice = getPriceRange(price: 3000)
        print(getPrice)
        
        
        let getMiniPrice = getMinimumPrice(priceRange: .One)
        print(getMiniPrice)
               
        
        let getMini = PriceRange.One
        print(getMini.getMinimumPrice())
    }
    
    
    
    
    //課題4 PriceRange というenumを作成する
    //     caseは4つ、1円〜1000円の商品が該当するもの
    //               1001円〜5000円の商品が該当するもの
    //               5001円〜20000円の商品が該当するもの
    //               20001円以上の商品が該当するもの
    
    //課題5 RenshuEnumViewController内に、「値段を渡すとPriceRangeが返ってくる」関数を作成する
    
    //課題6 RenshuEnumViewControllerの中に、「最低金額を返す」関数を作成する
    //     ヒント：switch を使う
    
    
    enum PriceRange: Int {
        case One
        case Two
        case Tree
        case More
        
        func getMinimumPrice() -> Int {
            switch self {
            case .One:
                return 1
            case .Two:
                return 1001
            case .Tree:
                return 5001
            case .More:
                return 20001
            }
        }
    }
    
    
    // 課題5
    func getPriceRange(price: Int) -> PriceRange {
        if price >= 1 && 1000 >= price {
            return .One
        }
        if price >= 1001 && 5000 >= price {
            return .Two
        }
        if price >= 5001 && 20000 >= price {
            return .Tree
        }
        return .More
    }
    
    
    // 課題6
    func getMinimumPrice(priceRange: PriceRange) -> Int {
//        if priceRange == .One {
//            return 1
//        }
//        else if priceRange == .Two {
//            return 1001
//        }
//        else if priceRange == .Tree {
//            return 5001
//        }
//        else {
//            return 20001
//        }
        
        switch priceRange {
        case .One:
            return 1
        case .Two:
            return 1001
        case .Tree:
            return 5001
        case .More:
            return 20001
        }
    }

            
    //        var i: Int = 0
    //        switch i {
    //        case 1:
    //            // 何かする
    //            print("")
    //　　　　　　↑　printを書けばbreakを省略できる
    //        case 2:
    //            break
    //        case 3:
    //            break
    //        }

}
 




