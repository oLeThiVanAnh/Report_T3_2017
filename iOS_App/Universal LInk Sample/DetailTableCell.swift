//
//  DetailTableCell.swift
//  Universal LInk Sample
//
//  Created by anhltv on 3/26/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class DetailTableCell : UITableViewCell
{

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    func setViewDetail(title:String, img:String) {
        self.iconImageView.image = UIImage.init(named: img)
        self.titleLabel.text = title
    }
}
