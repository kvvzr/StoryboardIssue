//
//  CustomView.swift
//  Issue1204
//
//  Created by kwzr on 2017/12/04.
//  Copyright © 2017年 kwzr. All rights reserved.
//

import UIKit

@objc protocol CustomViewDelegate {
}

class CustomView: UIView {
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var delegate: CustomViewDelegate?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Bundle(for: type(of: self)).loadNibNamed("CustomView", owner: self, options: nil)
        addSubview(view)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        view.frame = bounds
    }
}
