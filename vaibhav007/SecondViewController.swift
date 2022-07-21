//
//  SecondViewController.swift
//  vaibhav007
//
//  Created by Prince's Mac on 17/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func secondAction(_ sender: UIButton) {
        
        let ThirdViewController:UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController)!
                                                   
            self.navigationController?.pushViewController(ThirdViewController, animated: true)
    }
  
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Second VC Did Load")
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Second VC Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Second VC Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Second VC Did Disappear")
    }


}

  
