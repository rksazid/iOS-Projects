//
//  HomeVCViewController.swift
//  secondDayWorkshop
//
//  Created by KUET-CSE on 4/29/18.
//  Copyright © 2018 KUET-CSE. All rights reserved.
//

import UIKit



class HomeVCViewController: UIViewController ,DetailsVCDelegate{
    
    @IBOutlet weak var bannerImage: UIImageView!
    
    @IBOutlet weak var homeLabel: UILabel!
    
    func imageDidChange() {
        bannerImage?.image = nil
        bannerImage?.backgroundColor = UIColor.green
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier : "DetailsVC") as! DetailsVC
         detailVC.lionImg = bannerImage.image!
         detailVC.myTittle = homeLabel.text!
         detailVC.delegate = self
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
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
