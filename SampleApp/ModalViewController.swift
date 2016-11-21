//
//  ModalViewController.swift
//  SampleApp
//
//  Created by Barry, Elh on 11/21/16.
//  Copyright © 2016 Barry, Elh. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}
