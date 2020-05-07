//
//  AboutFunction2ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/06.
//

import UIKit

class AboutFunction2ViewController: UIViewController {
    
    // 問題8
    // 文字列"あいうえお"　の先頭3文字を表示する関数を作成する
    // ヒント： String型にはprefix(_ maxLength: Int)という関数が存在する
    
    
    func nnn() -> Substring {
       return "あいうえお".prefix(3)
    }
    
    
    
    // 問題9
    // 文字列str、整数nを与えると、そのstrの先頭n文字と、末尾n文字を足した文字列を返す関数を作り
    // viewDidLoadで呼び出す
    // 例：　"東京都渋谷区千駄ヶ谷"と3を与えると、"東京都駄ヶ谷"を返す
    
    
    func ccc() -> Substring {
        return "東京都渋谷区千駄ヶ谷".prefix(3) + "東京都渋谷区千駄ヶ谷".suffix(3)
    }
    
    
    func vvv(str:String)-> Bool{
        return str.isAlphanumeric()
    }
    
    
    
    func fff(str:String)-> Bool{
        if str.isAlphanumeric() == true {
            return true
        } else {
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = nnn()
        print(a)
        
        let b = ccc()
        print(b)
        
        //正しく動いているか、全てのパターンでチェックする。
        let d = vvv(str: "m2Edあ")
        let w = vvv(str: "")
        let r = vvv(str: "１=")
        let o = vvv(str: "tyu")
        print(d)
        print(w)
        print(r)
        print(o)
    }
}


// 問題10
// 文字列strがすべて半角英数字ならtrue、全角が含まれていたらfalseを返す関数を作成する
// viewDidLoadでそれが正しく動いているか確認する

////////////////////////////////////////////////////////////
//extensionはファイルをまたいで使える。
/// String型の拡張。string型に新しいfunctionを追加したい時にextension Stringを使う。
extension String {
    /// 文字列が全て半角英数字であるかどうか。[^a-zA-Z0-9]：半角英数記号のみ（空文字OK）
    func isAlphanumeric() -> Bool {
        return (!isEmpty) &&
               (range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil)
    }
}

