//
//  AboutButtonViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/02.
//

import UIKit

/// UIButtonについて
class AboutButtonViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var iconLabel1: UILabel!
    @IBOutlet weak var descriptionLabel1: UILabel!

    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var iconLabel2: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - ここからAction
    
    /// touch up insideと繋げたIBAction
    /// 使うのはほとんどこれ！
    @IBAction func button1WasTapped(_ sender: UIButton) {
        iconLabel1.text = "😀"
    }
    
    //MARK: -
    
    @IBAction func button2TouchDown(_ sender: Any) {
        iconLabel2.text = "😀 touch down"
    }
    @IBAction func button2TouchDragInside(_ sender: Any) {
        iconLabel2.text = "😀 touch drag inside"
    }
    @IBAction func button2TouchDragOutside(_ sender: Any) {
        iconLabel2.text = "😀 touch drag outside"
    }
    @IBAction func button2TouchUpInside(_ sender: Any) {
        iconLabel2.text = "😀 touch up inside"
    }
    @IBAction func button2TouchUpOutside(_ sender: Any) {
        iconLabel2.text = "😀 touch up outside"
    }
    
    
    

}
