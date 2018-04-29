//
//  DetailsVC.swift
//  secondDayWorkshop
//
//  Created by KUET-CSE on 4/29/18.
//  Copyright © 2018 KUET-CSE. All rights reserved.
//

import UIKit

protocol DetailsVCDelegate {
    func imageDidChange()
}

class DetailsVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tittleLBL:UILabel!
    
    var lionImg: UIImage?
    var myTittle:String = "NOPE"
    
    var delegate: DetailsVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       self.title = "DetailVC"
        
        imgView.image = lionImg
        tittleLBL.text = myTittle
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeImageAction(_ sender: UIButton){
        imgView.image = UIImage(named: "lion2")
        delegate?.imageDidChange()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
