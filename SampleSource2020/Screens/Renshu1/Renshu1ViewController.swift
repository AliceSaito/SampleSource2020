//
//  Renshu1ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/07.
//

import UIKit

class Renshu1ViewController: UIViewController {
    
    var monthStrings: [String] = []
    
    // 構造体
    struct MonthInfo {
        let year: Int
        let month: Int
    }
    
    // 配列
    var monthInfos: [MonthInfo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        renshu1()
        
        renshu2()
        
        renshu3()
        
        renshu4()
    }
    
    
    
    func renshu1() {
        // 練習1
        // monthStrings（定義済み）に、"2000/1" から "2100/12" までの1200ヶ月分の文字列を入れる
        // 例: monthStrings[0] は "2000/1"
        //     monthStrings[1] は "2000/2"
        //     monthStrings[2] は "2000/3"
        
        
        for i in (2000...2100){
            for j in (1...12){
                
                let s: String = "\(i)/\(j)"
                monthStrings.append(s)
            }
        }
        print(monthStrings,"⏰")
        // printもしてみる
        // ヒント：for文が2つ出てくる
        
    }
    
    
    
    func renshu2() {
        // 練習2
        // 「2020/5」はmonthStrings（定義済み）の何番目に入ってる？
        // 考えてみてから、for文で同じものを探し出して、合っているか確認する
        
        for i in 0..<monthStrings.count {
            let m = monthStrings[i]
            if m == "2020/5"{
                print(i)
            }
        }
        
        //別の書き方：enumeratedは同時に２つの値をfor文で扱える
        for (i, m) in monthStrings.enumerated() {
            if m == "2020/5" {
                print(i)
            }
        }
        
    }
    
    
    
    func renshu3() {
        // 練習3
        // 2000年1月から、2100年12月までのMonthInfo（定義済み）を生成し、monthInfos（定義済み）に入れる
        // 中身をprintで確認する
        
        for i in (2000...2100){
            for j in (1...12){
                
                let haco:MonthInfo = MonthInfo(year:i, month: j)
                monthInfos.append(haco)
            }
            
        }
        print(monthInfos,"🤥")
    }
    
    
    
    func renshu4() {
        // 練習4
        // 2020年5月は何番目に入ってる？
        // 考えてみてから、for文で同じものを探し出して、合っているか確認する
        
        for i in 0..<monthInfos.count{
            let k: MonthInfo = monthInfos[i]
            if k.year == 2020 && k.month == 5{
                print(i)
            }
        }
    }
}







//extension Renshu1ViewController {
// これ一旦なし
//func tips1() {
//    print("tips1")
//
//    let value: Int = 1
//    let y: Int = 2020
//    let m: Int = 2
//    let d: Int = 1
//
//    // これは「1」と表示される
//    print("\(value)")
//
//    // これは「1」と表示される %dは整数型、valueの値を表示している
//    // 書式付き文字列とよぶ
//    // 参考例　https://www.sejuku.net/blog/34872
//    //       https://capibara1969.com/1351/
//    print(String(format: "%d", value))
//
//    // これは「2020/2/1」と表示される
//    // %dを左から順に見ていき、順番にy,m,dが挿入される形
//    print(String(format: "%d/%d/%d", y, m, d))
//
//    // これは「01」と表示される
//    // %02dとかくと、「2桁、ゼロで埋める」という意味になる
//    print(String(format: "%02d", value))
//
//    // これは「2020/02/01」と表示される
//    print(String(format: "%d/%02d/%02d", y, m, d))
//
//}
//
//
