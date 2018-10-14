//
//  BorderButton.swift
//  app-swoosh
//
//  Created by exxe on 13.10.18.
//  Copyright © 2018 exxe. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor =
            UIColor.white.cgColor
        }
    }
}

