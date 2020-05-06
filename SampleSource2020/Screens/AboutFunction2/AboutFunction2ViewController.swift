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
    
    // 問題9
    // 文字列str、整数nを与えると、そのstrの先頭n文字と、末尾n文字を足した文字列を返す関数を作り
    // viewDidLoadで呼び出す
    // 例：　"東京都渋谷区千駄ヶ谷"と3を与えると、"東京都駄ヶ谷"を返す
    
    // 問題10
    // 文字列strがすべて半角英数字ならtrue、全角が含まれていたらfalseを返す関数を作成する
    // viewDidLoadでそれが正しく動いているか確認する
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

////////////////////////////////////////////////////////////

/// String型の拡張
extension String {
    /// 文字列が全て半角英数字であるかどうか
    func isAlphanumeric() -> Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}

