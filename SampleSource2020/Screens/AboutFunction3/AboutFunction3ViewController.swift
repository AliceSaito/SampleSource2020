//
//  AboutFunction3ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/07.
//

import UIKit

class AboutFunction3ViewController: UIViewController {
    
    // 問題11
    // 引数が「path: String」の関数を作成する
    // 関数名はcreateUrl
    // 関数は"https://"にpathを繋げたものをURL型にしたものを返す
    // ヒント：URL(string:)
    // viewDidLoadでpathに"www.yahoo.co.jp"を渡す
    
    
    // 問題12
    // 引数が「bigR: CGFloat, smallR: CGFloat」の関数を作成する
    // 関数名はcalcMenseki
    // 関数は、大きな円の面積から、小さな円の面積を引いた値を返す（CGFloat型）
    // 関数は、下に定義した「func calcMensekiOfCircle(r: CGFloat) -> CGFloat」を使用する
    // viewDidLoadで適当に呼んで結果をprintしてみる
    // なおbigRがsmallRより小さい場合は0を返すものとする
    
    
    // 問題13
    // 引数が「title: String, backgroundColor: UIColor」の関数を作る
    // 関数名はcreateMyButton
    // 関数はUIButtonを作成して返す
    // ヒント：
    // let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    // button.setTitle("a", for: UIControl.State.normal)
    // button.backgroundColor = .red
    
    
    // 問題14
    // 引数が「fontSize: CGFloat, text: String, color: UIColor」の関数を作る
    // 関数名はcreateMyLabel
    // 関数はUILabelを作成して返す
    
    /// 関数の仕様
    /// - Parameters:
    ///   - fontSize: labelのフォントサイズ（CGFloat）
    ///   - text: labelのテキスト (String)
    ///   - color: labelのテキストカラー (UIColor)
    /// - Returns: 生成したLabel

    // ヒント: UILabel使い方
    // let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    // label.font = UIFont.systemFont(ofSize: 12)
    // label.text = "abcde"
    // label.textColor = UIColor.red

    override func viewDidLoad() {
        super.viewDidLoad()
    }    
}


////////////////////////////////////////

extension AboutFunction3ViewController {
    
    /// 円の面積を求める
    /// - Parameters:
    ///   - r: 円の半径
    /// - Returns: 面積
    func calcMensekiOfCircle(r: CGFloat) -> CGFloat {
        return r * r * CGFloat.pi
    }
}
