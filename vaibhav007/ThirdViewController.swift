//
//  ThirdViewController.swift
//  vaibhav007
//
//  Created by Prince's Mac on 20/06/22.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    // MARK: - Instance Vars
    
    @IBOutlet weak var foodMenuDisplayTableView: UITableView!
    
    var StarbucksCoffee = ["Americanos",
                  "Brewed Coffee", "Veranda Blend",  "Caffè Misto",
                  "Cappuccinos", "Espresso Shots", "Espresso",
                  "Flat Whites", "Flat White", "Lattes", "Caffè Latte",
                  "Macchiatos", "Caramel Macchiato",
                 "Mochas", "Caffè Mocha."]
    
    
    
    var coldDrinksMenu = [ "Thumbs Up", "Fanta", "7 Up", "Sprite","Mountain Dew","Jaljeera","Virgin Mojito","MockTail", "CockTail"]
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        foodMenuDisplayTableView.dataSource = self
        foodMenuDisplayTableView.delegate = self
        
        print("Third VC Did Load")
        
    
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Third VC Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Third VC Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Third VC Did Disappear")
    }


    // MARK: - Setup
    
    
  
    // MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell--\(indexPath)")
    }
    
  
    // MARK: - Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        //return 7
        if (section == 0){
        return StarbucksCoffee.count
        }
            else {
            return coldDrinksMenu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = self.foodMenuDisplayTableView.dequeueReusableCell(withIdentifier: "BasicCell")
        //cell?.textLabel?.text = "Welcome To Pune"
        
        if (indexPath.section == 0){
        
       
        print("\(StarbucksCoffee[indexPath.row]) -- \(indexPath.row)")

        let eachStarbucksCoffee = StarbucksCoffee[indexPath.row]
        cell?.textLabel?.text = eachStarbucksCoffee
        
        return cell!
        }
        
        let eachHotelMenu = coldDrinksMenu[indexPath.row]
        cell?.textLabel?.text = eachHotelMenu
        return cell!
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
        
    }
    

}
