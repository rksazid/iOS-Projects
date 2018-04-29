//
//  ViewController.swift
//  KuetWorkshop
//
//  Created by Shuvo on 28/4/18.
//  Copyright © 2018 S.M.Moinuddin (Shuvo). All rights reserved.
//

import UIKit

class HomeVC: UIViewController, DetailsVCDelegate {
    
    func imageDidChange() {
        bannerImgView?.image = nil
        bannerImgView?.backgroundColor = UIColor.red
    }
    
    
    @IBOutlet weak var bannerImgView: UIImageView?
    @IBOutlet weak var titleLbl: UILabel!
    
    let viewM = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // bannerImgView?.image = UIImage(named: "ios-logo copy")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func nextAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier :"DetailsVC") as! DetailsVC
        detailVC.lionImg = bannerImgView?.image
        detailVC.myTitle = titleLbl.text!
        detailVC.delegate = self
        
        //self.present(viewController, animated: true)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

