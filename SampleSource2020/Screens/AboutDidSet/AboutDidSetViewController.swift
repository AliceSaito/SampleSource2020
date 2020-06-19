//
//  AboutDidSetViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/19.
//

import UIKit

// didSet willSetについて学ぶ

//var hoge: String = "" {
//    willSet {
//        // 値が代入される前に実行される
//        // newValueが使える
//    }
//    didSet {
//        // 値が代入された後に実行される
//    }
//}

// これは積極的に使わなくてもいいです
// あまり使いすぎるとわけがわからなくなります
// ただ、読めるようにしておいて欲しい


class AboutDidSetViewController: UIViewController {
    
    var hoge: String = "しょきち" {
        willSet {
            print("willSet", "今の値", hoge)
            print("willSet", "新しい値", newValue)
        }
        didSet {
            print("didSet", "今の値", hoge)
//            print("didSet", "新しい値", newValue)   // これは使えない
        }
    }
    
    // 課題1. hogeに何か代入して、どうprintされるか観察する

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
