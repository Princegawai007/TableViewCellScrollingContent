//
//  ViewController.swift
//  vaibhav007
//
//  Created by Prince's Mac on 17/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func actionEvent1(_ sender: UIButton)
    {
        
        let secondViewController:UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController)!
                                                   
            self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
    // MARK: - View Lifecycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("First VC view Did Load")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("First VC Will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("First VC Did Appear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("First VC Did Disappear")
    }


}

