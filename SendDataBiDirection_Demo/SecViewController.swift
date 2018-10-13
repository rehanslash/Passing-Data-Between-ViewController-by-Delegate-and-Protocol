//
//  SecViewController.swift
//  SendDataBiDirection_Demo
//
//  Created by HigherVisibility on 12/10/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit


protocol SendDataDelegate {
    
    func SendData(TextData:String)
}


class SecViewController: UIViewController {

    
    @IBOutlet weak var sectextField: UITextField!
    
    var Datadelegate : SendDataDelegate!
    
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        self.sectextField.text = self.data
        
    }
    
    

    
    @IBAction func btn_Action(_ sender: Any) {
        
        self.Datadelegate.SendData(TextData: self.sectextField.text!)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
