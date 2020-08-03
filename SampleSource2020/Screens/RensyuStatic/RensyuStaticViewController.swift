//
//  RensyuStaticViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/24.
//

import UIKit
/// プロトコル
//UITableViewDelegate, UITableViewDataSourceはプロトコルの一種
protocol HaveShowBackColorProtocol {
    func showBackColor()
}

class HogeHogeHogeHoge {
    func hoge() {
        var rensyuStaticVC: RensyuStaticViewController!
        rensyuStaticVC.showBackColor()
        
    }
}

/// Staticの練習をする
class RensyuStaticViewController: UIViewController, HaveShowBackColorProtocol {
    
    func showBackColor() {
        print(view.backgroundColor!)
    }
    

    // staticをつけると、クラス関数やクラス変数となる
    
    // 例
    class Hoge {
        static var a: Int = 10
        var b: Int = 20
        
        static func ccc() {
            print("ccc")
        }
        func ddd() {
            print("ddd")
        }
    }
    
    
    class Kisetsu {
        static var summer: String = "夏"
        var winter: String = "冬"
        
        static func spring() {
            print("春")
//  ×       print(winter)
//staticからstaticは呼び出せる
            print(summer)
            
        }
        func autumn() {
            print("秋")
            print(winter)
//  ×       print(summer)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // staticがついていない場合のアクセスの仕方
        // インスタンス化してアクセスする
        let hoge = Hoge()
        print(hoge.b)       // -> 20
        
        let fuga = Hoge()
        fuga.b = 30         // -> 20だったbに、30を代入した
        print(fuga.b)       // -> 30
        print(hoge.b)       // -> 20のまま　hoge.b と fuga.b は別物

        
        // staticがついている場合
        print(Hoge.a)       // classにドットでアクセスできる　インスタンス化不要
        
        Hoge.a = 5
        print(Hoge.a)       // これは5
        
        
        // 関数も同様
        hoge.ddd()          // -> ddd
//        hoge.ccc()        // staticあり。これは呼べない
        Hoge.ccc()          // -> ccc  これは呼べる
//        Hoge.ddd()        // staticなし。これは呼べない
        
        
        // staticの中にstructやenumも使える
        
    
        // extensionで
        // var aaa: Int = 0         // 宣言はできない🙅‍♂️ Extensions must not contain stored properties
        // static var aaa: Int = 0  // staticがあれば宣言できる🙆‍♂️
        
        
        // どういう時に使うの？
        // staticをつける、つけないでは別物
        // staticをつけるのは、定数のようなもの
        // たとえば、Int.max, Int.min というstatic変数がある
        // これは、Int型の最大の数と、最小の数を定義してある
        // 型そのものに関わる情報はstaticをつける
        
        // でも基本的にstaticは付けない
        // なぜなら、classは型であって、それをインスタンス化して使いたい事が多いから


        //        class Animal {
        //            var isChild: Bool = false
        //            var gender: Gender = .male
        //
        //            static func size() -> Int {
        //                // staticを付けると、class Animalの直下につく。isChildやgenderは使えない。
        //                //Animal.sizeというfanction。
        //            }
        //        }


        // 課題
        // staticメンバ変数と、メンバ変数と、staticメンバ関数と、メンバ関数を持ったclassを作る
        //   staticメンバ関数から、メンバ変数にアクセスできないことを確認する
        //   staticメンバ関数から、staticメンバ変数にアクセスできることを確認する
        //   メンバ関数から、staticメンバ変数にアクセスできないことを確認する
        //   メンバ関数から、メンバ変数にアクセスできることを確認する
        
        
        let kisetsu = Kisetsu()
        kisetsu.autumn()
// ×    kisetsu.spring()
        
        print(kisetsu.winter)
// ×    print(kisetsu.summer)
        
    }
    
    
    // static func と class func
    // static func：ステイティック変数やステイティックプロパティと呼ばれる
    //class func：クラス変数やクラスプロパティと呼ばれる
    //static funcはoverrdeできないけど、class funcはできる。
    
    // 例 両者は似ている, a()からb()にアクセスできるし、逆もできる
    class Hoge2 {
        static func a() -> Int {
            return 0
        }
        //あまり使わない↓
        class func b() -> Int {
            return 0
        }
    }
    
    // でも「class var」「class func」は基本使わなくて大丈夫👌
    // 一旦staticだけ覚えよう！
    
    // 注意:
    // 他の言語では「static」「静的」の意味が変わってくるので、swiftだけで考えよう


}

