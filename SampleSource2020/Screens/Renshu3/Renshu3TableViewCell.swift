//
//  Renshu3TableViewCell.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/13.
//

import UIKit

class Renshu3TableViewCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!

    func setup(animal: Animal) {
        if let img = UIImage(named: animal.image) {
            iconView.image = img
        }
        nameLabel.text = animal.name
        pointLabel.text = "\(animal.point)" + "ポイント"
    }
    

}
