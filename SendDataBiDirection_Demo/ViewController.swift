//
//  ViewController.swift
//  SendDataBiDirection_Demo
//
//  Created by HigherVisibility on 12/10/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SendSecondVC(_ sender: Any) {
        
        let NextVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecViewController
        NextVC.data = self.textField.text!
        NextVC.Datadelegate = self
        self.present(NextVC, animated: false, completion: nil)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:SendDataDelegate {
    func SendData(TextData: String) {
        self.textField.text = TextData
    }
    
    
    
    
}


