//
//  DaninViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/22.
//

import UIKit

class DaninViewController: UIViewController {
    
    var selectedData: Profile?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var techniqueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nilだったら処理を止める。オプショナルバインディング。暗記する。
        guard let selectedData = selectedData else {
            return
        }
        
        self.imageView.image = UIImage(named: selectedData.image)
        self.numberLabel.text = "No." + selectedData.number
        self.nameLabel.text = selectedData.name
        self.typeLabel.text = "能力：" + selectedData.type
        //1個目の必殺技だけ印刷
        //self.techniqueLabel.text = "必殺技：" + selectedData.technique[0]
        
        var techniquesString: String = selectedData.technique[0]
        for i in 1..<selectedData.technique.count {
            let te = selectedData.technique[i]
            techniquesString = techniquesString + "\n" + te
        }
        self.techniqueLabel.text = "必殺技：" + "\n" + techniquesString
        //上のを一行で書く方法
        //let techniquesString = selectedData.technique.joined(separator:"\n")
    }
}
