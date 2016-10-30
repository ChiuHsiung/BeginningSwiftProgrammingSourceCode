//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by zhuangqiuxiong on 2016/10/16.
//  Copyright © 2016年 zhuangqiuxiong. All rights reserved.
//

import UIKit


class RestaurantTableViewController: UITableViewController {

    var restaurants = [Restaurant]()
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
        restaurants = [
            Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend", isVisited: false),
            Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei", isVisited: false),
            Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha", isVisited: false),
            Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl", isVisited: false),
            Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster", isVisited: false),
            Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkeerestaurant", isVisited: false),
            Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier", isVisited: false),
            Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery", isVisited: false),
            Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haighschocolate", isVisited: false),
            Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palominoespresso", isVisited: false),
            Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate", isVisited: false),
            Restaurant(name: "Traif", type: "American", location: "New York", image: "traif", isVisited: false),
            Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "grahamavenuemeats", isVisited: false),
            Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "wafflewolf", isVisited: false),
            Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves", isVisited: false),
            Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore", isVisited: false),
            Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional", isVisited: false),
            Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina", isVisited: false),
            Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia", isVisited: false),
            Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak", isVisited: false),
            Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "caskpubkitchen", isVisited: false)]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL_IDENTIFIER", for: indexPath) as! RestaurantTableViewCell
        
        let restaurant = restaurants[indexPath.row] 
        
        cell.nameLabel?.text = restaurant.name
        cell.thumbnailImageView?.image = UIImage(named: restaurant.image)
        cell.locationLabel.text = restaurant.location
        cell.typeLabel.text = restaurant.type
        
        if restaurant.isVisited == true {
            
            cell.accessoryType = .checkmark
            
        }
        
        else
        {
            cell.accessoryType = .none
        }

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        
//        let optionMenu = UIAlertController.init(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
//        
//        //Cacel action
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action: UIAlertAction!) in
//            
//            NSLog("Click Cancel")
//            
//        }
//        
//        let callActionHandler: (UIAlertAction!)->Void = {
//            
//            (action: UIAlertAction!) in
//            
//            let alertMsg = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
//            
//            alertMsg.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            
//            self.present(alertMsg, animated: true, completion: nil)
//            
//        }
//        
//        //Call Action
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
//        
//        //Check-in Action
//        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: { (action: UIAlertAction!) in
//
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//            
//            self.restaurants[indexPath.row].isVisited = true
//            
//            })
//        
//        //Undo check-in Action
//        let undoCheckInAction = UIAlertAction(title: "Undo Check in", style: .default, handler: { (action: UIAlertAction!) in
//            
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .none
//            
//            self.restaurants[indexPath.row].isVisited = false
//            
//        })
//        
//        checkInAction.isEnabled = !self.restaurants[indexPath.row].isVisited
//        undoCheckInAction.isEnabled = self.restaurants[indexPath.row].isVisited
//        
//        optionMenu.addAction(cancelAction)
//        optionMenu.addAction(callAction)
//        optionMenu.addAction(checkInAction)
//        optionMenu.addAction(undoCheckInAction)
//        
//        
//        present(optionMenu, animated: true, completion: nil)
//        
//        tableView.deselectRow(at: indexPath, animated: false)
//        
//    }
//    
//
//    //Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete
//        {
//            // Delete the row from the data source
//            
//            self.restaurants.remove(at: indexPath.row)
//            
//            tableView.deleteRows(at: [indexPath], with: .fade)
//
//            
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
    

    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        // Social Sharing Button
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share", handler: { (action, indexPath) -> Void in
            
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image) {
                let activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
            }else
            {
                let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
            }
            
        })
        
        // Delete button
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete",handler: { (action, indexPath) -> Void in
            
            // Delete the row from the data source
            self.restaurants.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        })
        
        
        shareAction.backgroundColor = UIColor(red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
        
        return [deleteAction, shareAction]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showRestaurantDetail" {
            
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let destinationController = segue.destination as! RestaurantDetailViewController
                
                destinationController.restaurant = restaurants[indexPath.row]
                
            }
            
        }
        
    }

}
