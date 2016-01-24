//
//  TableViewCell.swift
//  DevBootcampHackathon
//
//  Created by Lucas Farah on 1/23/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

  @IBOutlet weak var imgvCat: UIImageView!
  @IBOutlet weak var lblName: UILabel!
  @IBOutlet weak var lblNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
