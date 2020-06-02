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
        
        // ③カテゴリーのように、String型にして、rawValueを設定しないと、自動的にcaseの名前がrawValueとなる
        // 以下は③カテゴリーと等価
//        enum Category: String {
//            case tops = "tops"
//            case outer = "outer"
//            case pants = "pants"
//            case skirt = "skirt"
//            case onePiece = "onePiece"
//        }
        
        
        //課題1 Categoryのcaseをすべて作成して、配列に詰めて、すべてprintする
        //     ヒント　Category.tops
        
        //課題2 Categoryのcaseをすべて文字列から作成して、配列に詰めて、すべてprintする
        //     ヒント　Category(rawValue: "tops")
        
        //課題3 今、ある服の情報が以下のように与えられている
        //     これらのうち、色がredであるもののタイトルをすべてprintする
        let array = [Clothes(title: "nano-universe", category: .tops, size: .large, color: .white),
                     Clothes(title: "anown", category: .tops, size: .midium, color: .blue),
                     Clothes(title: "THE NORTH FACE/Novelty Compact Jacket", category: .outer, size: .small, color: .blue),
                     Clothes(title: "ブッチャープリント 2Bジャケット", category: .outer, size: .xl, color: .red),
                     Clothes(title: "MGV", category: .pants, size: .small, color: .blue),
                     Clothes(title: "楊柳シフォンスカート", category: .skirt, size: .large, color: .white),
                     Clothes(title: "ABITOKYO", category: .skirt, size: .large, color: .black)
        ]
                     
        
        
    }
    
    
}