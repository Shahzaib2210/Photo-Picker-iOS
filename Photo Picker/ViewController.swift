//
//  ViewController.swift
//  Photo Picker
//
//  Created by Shahzaib Mumtaz on 11/10/2022.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BtnSelectImageTapped(_ sender: UIButton) {
        self.present(super.showImagePicker(sourceType: .photoLibrary), animated: true)
        super.imgBlock = { selectedImg in
            self.imgView.image = selectedImg
        }
    }
}

