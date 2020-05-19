//
//  MagazinesTableViewCell2.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/19.
//

import UIKit

class MagazinesTableViewCell2: UITableViewCell {
    
    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var publisherLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    /// MagazineDatasでデータを詰める。★を使う時は不要。
       func setup(magazineData2: MagazineDatas2) {
           coverImage.image = UIImage(named: magazineData2.image)
           nameLabel.text = magazineData2.name
           publisherLabel.text = magazineData2.publisher
           releaseDateLabel.text = magazineData2.releaseDate
    }
}
