//
//  CountryTableViewCell.swift
//  CustomCellTableView
//
//  Created by 김재훈 on 2022/02/16.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet var countryView: UIView!
    @IBOutlet var countryImgView: UIImageView!
    @IBOutlet var countryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
