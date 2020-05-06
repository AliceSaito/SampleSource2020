//
//  AboutFunctionViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/05.
//

import UIKit


class AboutFunctionViewController: UIViewController {
    
    // 問題1
    // 引数がない関数を作成する
    // 関数名はprintTest
    // 関数の中は「test」をコンソールに出力するだけ
    // viewDidLoadで呼び出す
    
    func printTest(){
        print("test")
    }
    
    // 問題2
    // 引数が「a: Int」の関数を作成する
    // 関数名はprintInt
    // 関数の中は「a」をコンソールに出力するだけ
    // viewDidLoadで呼び出す
    
    func printInt(a: Int){
        print("a")
    }
    
    // 問題3
    // 引数が「a: Int, b: Int」、戻り値がInt型の関数を作成する
    // 関数名はkakezan
    // 関数はaとbを掛け算した値を返す
    // 戻り値を呼び出し側でprintする
    // viewDidLoadで呼び出す
    
    
    func kakezan(a: Int, b: Int) -> Int{
        return a * b
    }
    
    // 問題4
    // 引数が「a: Int, b: Int」、戻り値がInt型の関数を作成する
    // aとbを足して返す関数を作り、viewDidLoadで呼び出し、結果を出力する
    
    func yonmon(a: Int, b: Int) -> Int{
        return a + b
    }
    
    // 問題5
    // 円の面積を求める関数を作り、結果を出力する（半径×半径×3.14）
    
    func circle(diameter: Double) -> Double{
        return diameter * diameter * 3.14
    }
    
    
    // 問題6
    // String型 "2020/5/1" をDate型に変換して返す結果を出力する
    
    func firstDay(day: String)-> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        dateFormatter.locale = Locale(identifier: "jp_JP")
        return dateFormatter.date(from: day)!
        //↑dateの中身を見ると、Date?。date(from: day)はひとかたまりなので、date!(from: day)はあり得ない。
    }
    
    
    // 問題7
    // 現日時のDateを返す関数を作る
    // 関数名は createCurrentDate
    
    func createCurrentDate()-> Date {
        return Date()
    }
    
    
    
    
    //該当の画面が表示された時...
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printTest()
        
        printInt(a: 10)
        
        let kake = kakezan(a: 10, b: 20)
        print(kake)
        
        let yon = yonmon(a:11, b: 22)
        print(yon)
        
        let circleArea = circle(diameter:10)
        print(circleArea)
        
        let thisDay = firstDay(day: "2020/05/01")
        print(thisDay)
        
        print(createCurrentDate())
        
    }
    
    

}

