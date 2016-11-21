//
//  TableViewController.swift
//  SampleApp
//
//  Created by Barry, Elh on 11/14/16.
//  Copyright © 2016 Barry, Elh. All rights reserved.
//

import UIKit

class ThemingViewController: UIViewController {
    
    @IBOutlet var alertButton: UIButton!
    @IBOutlet var actionSheetButton: UIButton!
    @IBOutlet var modalButton: UIButton!
    @IBOutlet var themeLabel: UILabel!
    @IBOutlet var stepLabel: UILabel!
    @IBOutlet var switchButton: UISwitch!
    @IBOutlet var stepper: UIStepper!
    
    lazy var alertCtrl: UIAlertController = {

        let alert = UIAlertController(title: "Alert", message: "Are you sure you want to alert this?", preferredStyle: .alert)
        alert.addAction( UIAlertAction(title: "Cancel", style: .cancel, handler: nil) )
        alert.addAction( UIAlertAction(title: "Continue", style: .default, handler: nil) )
        return alert
    }()
    
    lazy var actionSheetCtrl: UIAlertController = {

        let optionMenu = UIAlertController(title: "Action Sheet", message: "Choose an option below", preferredStyle: .actionSheet)
        optionMenu.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))
        optionMenu.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        optionMenu.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        return optionMenu
    }()

    @IBAction func alertButtonTouched() {

        showAlertDialog()
    }
    
    @IBAction func actionSheetButtonTouched() {

        showActionSheetOptions()
    }
    
    @IBAction func switchButtonPressed() {

        guard !switchButton.isOn else {
            setDarkTheme()
            return
        }
        setDefaultTheme()
    }
    
    @IBAction func stepperValueChanged(sender: UIStepper) {

        stepLabel.text = "Step: \(Int(sender.value).description)"
    }
    
    private func showAlertDialog() {

        present(alertCtrl, animated: UIView.areAnimationsEnabled, completion: nil)
    }
    
    private func showActionSheetOptions() {

        present(actionSheetCtrl, animated: UIView.areAnimationsEnabled, completion: nil)
    }
    
    private func setDefaultTheme() {

        view.backgroundColor = UIColor.white
        alertButton.titleLabel!.textColor = UIColor.black
        actionSheetButton.titleLabel!.textColor = UIColor.black
        modalButton.titleLabel!.textColor = UIColor.black
        themeLabel.textColor = UIColor.white
        stepLabel.textColor = UIColor.white
    }
    
    private func setDarkTheme() {

        view.backgroundColor = UIColor.black
        alertButton.titleLabel!.textColor = UIColor.white
        actionSheetButton.titleLabel!.textColor = UIColor.white
        modalButton.titleLabel!.textColor = UIColor.white
        themeLabel.textColor = UIColor.black
        stepLabel.textColor = UIColor.black
    }
}
