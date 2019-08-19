//
//  StateCollectionViewCell.swift
//  StateFlagsSwift
//
//  Created by Blake kvarfordt on 8/19/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    var state: State? {
        didSet {
            updateViews()
        }
    }
    
    
    func updateViews() {
        guard let state = state else { return }
        
        flagImageView.image = UIImage(named: state.abbreviation)
        nameLabel.text = state.name
    }
    
}
