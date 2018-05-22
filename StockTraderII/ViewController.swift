//
//  ViewController.swift
//  StockTraderII
//
//  Created by Francisco on 21/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    var destinationIndexPath = 0
    
    @IBAction func buttonsArePressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            destinationIndexPath = sender.tag
            print("Covering the basics was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        case 2:
            destinationIndexPath = sender.tag
            print("Understanding the fundamentals was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        case 3:
            destinationIndexPath = sender.tag
            print("Understanding charts was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        case 4:
            destinationIndexPath = sender.tag
            print("Top Strategies was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        case 5:
            destinationIndexPath = sender.tag
            print("Forex was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        case 6:
            destinationIndexPath = sender.tag
            print("Top Brokers & Reviews was chosen")
            performSegue(withIdentifier: "goToCollection", sender: self)
            
        default:
            print("Choose a course")
        }
        
    }
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override var prefersStatusBarHidden: Bool {
        
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        self.tabBarController?.tabBar.isHidden = false
        
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToCollection" {
            
            let collectionVC = segue.destination as? CollectionLevelsViewController
            
            collectionVC?.mainCourseIndexPath = destinationIndexPath
            
        }
    }
    
    
    
    
    
    
}















extension ViewController:UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x>0 {
            scrollView.contentOffset.x = 0
        }
        
        if scrollView.contentOffset.x < 0 {
            
            scrollView.contentOffset.x = 0
        }
    }
    
    
}
