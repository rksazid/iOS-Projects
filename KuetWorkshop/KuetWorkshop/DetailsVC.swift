//
//  DetailsVC.swift
//  KuetWorkshop
//
//  Created by Shuvo on 28/4/18.
//  Copyright © 2018 S.M.Moinuddin (Shuvo). All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    var delegate: DetailsVCDelegate?
    
    var lionImg: UIImage?
    var myTitle: String = "NOPE"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Details VC"
        
        imgView.image = lionImg
        titleLbl.text = myTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func changeImgAction(_ sender: UIButton) {
        imgView.image = UIImage(named: "ios-logo copy")
        delegate?.imageDidChange()
    }
    
    @IBAction func goAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier :"ContactVC") as! ContactVC
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}
