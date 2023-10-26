//
//  ViewController.swift
//  IAmRich2
//
//  Created by Minh Toan on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDiamond: UIImageView!
    @IBOutlet weak var txtIAmRich: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupImgDiamond()
        setupTxtIAmrich()
        UIView.animate(withDuration: 5) {
            
            self.imgDiamond.alpha = 1
            
            self.txtIAmRich.center = CGPoint(x: self.view.bounds.width / 2, y: self.imgDiamond.frame.origin.y + 250)
        }
        
    }
    
    func setupImgDiamond(){
        imgDiamond.bounds = CGRect(x: 0, y: 0, width: 300, height: 200)
        imgDiamond.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 2 - 100)
        imgDiamond.alpha = 0
    }
    
    func setupTxtIAmrich(){
        txtIAmRich.text = "I Am Rich"
        txtIAmRich.textColor = .white
        txtIAmRich.font = .systemFont(ofSize: 30)
        txtIAmRich.bounds = CGRect(x: 0, y: 0, width: view.bounds.width, height: 30)
        txtIAmRich.textAlignment = .center
        txtIAmRich.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height + 40)
    }


}

