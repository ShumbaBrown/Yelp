//
//  SwitchCell.swift
//  Yelp
//
//  Created by Shumba Brown on 1/31/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    @objc optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
     
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
        
        onSwitch.addTarget(self, action: "switchValueChanged", for: UIControlEvents.valueChanged)
    }
    
    func switchValueChanged() {
        print("switch value is about to change")
        delegate?.switchCell?(switchCell: self, didChangeValue: onSwitch.isOn)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
