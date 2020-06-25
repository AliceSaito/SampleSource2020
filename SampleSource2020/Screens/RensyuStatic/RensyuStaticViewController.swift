//
//  RensyuStaticViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/24.
//

import UIKit

/// Staticの練習をする
class RensyuStaticViewController: UIViewController {

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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // staticがついていない場合のアクセスの仕方
        // インスタンス化してアクセスする
        let hoge = Hoge()
        print(hoge.b)       // -> 20
        
        let fuga = Hoge()
        fuga.b = 30
        print(fuga.b)       // -> 30
        print(hoge.b)       // -> 20のまま　hoge.b と fuga.b は別物

        
        // staticがついている場合
        print(Hoge.a)       // classにドットでアクセスできる　インスタンス化不要
        
        Hoge.a = 5
        print(Hoge.a)       // これは5
        
        
        // 関数も同様
        hoge.ddd()          // -> ddd
//        hoge.ccc()        // これは呼べない
        Hoge.ccc()          // -> ccc  これは呼べる
//        Hoge.ddd()        // これは呼べない
        
        
        // structでもできる
        // enumでもできる
        
    
        // extensionで
        // var aaa: Int = 0         // できない🙅‍♂️ Extensions must not contain stored properties
        // static var aaa: Int = 0  // できる🙆‍♂️
        
        
        // どういう時に使うの？
        // staticをつける、つけないで大違い！
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
        //                // staticが付いてるから、ここからisChildやgenderは見えない、別の世界
        //            }
        //        }


        // 課題
        // staticメンバ変数と、メンバ変数と、staticメンバ関数と、メンバ関数を持ったclassを作る
        //   staticメンバ関数から、メンバ変数にアクセスできないことを確認する
        //   staticメンバ関数から、staticメンバ変数にアクセスできることを確認する
        //   メンバ関数から、staticメンバ変数にアクセスできないことを確認する
        //   メンバ関数から、メンバ変数にアクセスできることを確認する
        
    }
    
    
    // おまけ
    // こういうのは、クラス変数やクラスプロパティと呼ばれる
    // 実は、似たものに「class」がある
    
    // 例 両者は似ている, a()からb()にアクセスできるし、逆もできる
    class Hoge2 {
        static func a() -> Int {
            return 0
        }
        class func b() -> Int {
            return 0
        }
    }
    
    // でも「class var」「class func」は基本使わなくて大丈夫👌
    // 一旦staticだけ覚えよう！
    
    // 注意:
    // 他の言語では「static」「静的」の意味が変わってくるので、swiftだけで考えよう


}

