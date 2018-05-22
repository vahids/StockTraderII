//
//  DescriptionViewController.swift
//  StockTraderII
//
//  Created by Francisco on 22/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//


import UIKit

class DescriptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,  UINavigationBarDelegate {
    
    var mainCourseIndexPath:Int!
    
    var currentArrayCount:Int!
    
    var currentPage:Float!
    
    @IBOutlet weak var navigationBarVC: UINavigationBar!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func cancelButtonIsPressed(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "goToCollectionVC", sender: self)
    }
    
    
    
    
    func add1ProgressView() {
        
        if mainCourseIndexPath == 1 {
            
            progressView.progress += 0.10
            
            
        } else if mainCourseIndexPath == 2 {
            
            
            progressView.progress += 0.167
        }
        
        
    }
    
    func less1ProgressView(){
        
        if mainCourseIndexPath == 1 {
            
            progressView.progress -= 0.10
            
        } else if mainCourseIndexPath == 2 {
            
            
            progressView.progress -= 0.167
        }
        
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Current Page instance
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func createHTMLString(text:String,size:String, color:String, isBold:Bool) -> String{
        
        // Size can range from 1 to 7
        
        var string = ""
        
        if isBold == true {
            
            string = "<font size=\(size) color=\(color)><b>\(text)</b></font>"
            
        } else {
            
            string = "<font size=\(size) color=\(color)>\(text)</font><br>"
        }
        
        
        
        
        return string
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        
        
        return true
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! DescriptionTableViewCell
        
        if mainCourseIndexPath == 1 {
            
            navigationBarVC.barTintColor = hexStringToUIColor(hex: "804FA1")
            
            progressView.progressTintColor = hexStringToUIColor(hex: "804FA1")
            
            progressView.trackTintColor = hexStringToUIColor(hex: "FFFFFF")
            
            navigationBarVC.backgroundColor = hexStringToUIColor(hex: "804FA1")
            
            if currentPage == 1 {
                
                var charts = [#imageLiteral(resourceName: "StockPhoto"), #imageLiteral(resourceName: "Chart2")]
                
                let coveringBasics = CoveringBasics()
                
                navigationBarVC.topItem?.title = coveringBasics.level_one_whyInvestInTheStockMarket_title
                
                
                var textViews:[NSAttributedString] = [coveringBasics.level_one_whyInvestInTheStockMarket_desc_oneHTMLAttributed, coveringBasics.level_one_whyInvestInTheStockMarket_desc_twoHTMLAttributed]
                
                
                
                tableView.rowHeight = UITableViewAutomaticDimension
                tableView.estimatedRowHeight = 500
                
                cell.chartImageView.image = charts[indexPath.row]
                
                cell.descriptionTextView.attributedText = textViews[indexPath.row]
                
                
            } else if currentPage == 2 {
                
                
                
                tableView.rowHeight = UITableViewAutomaticDimension
                tableView.estimatedRowHeight = 500
                
                var charts = [#imageLiteral(resourceName: "StockPhoto"), #imageLiteral(resourceName: "Chart2")]
                
                var textViews:[String] = ["View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2", "Ma WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa Willy"]
                
                cell.chartImageView.image = charts[indexPath.row]
                
                cell.descriptionTextView.text = textViews[indexPath.row]
                
                
                
                
            }
            
            
            
        } else if mainCourseIndexPath == 2 {
            
            navigationBarVC.barTintColor = hexStringToUIColor(hex: "2E2E54")
            
            navigationBarVC.backgroundColor = hexStringToUIColor(hex: "2E2E54")
            
            progressView.progressTintColor = hexStringToUIColor(hex: "2E2E54")
            
            progressView.trackTintColor = hexStringToUIColor(hex: "FFFFFF")
            
            
            
            
            if currentPage == 1 {
                
                var charts = [#imageLiteral(resourceName: "StockPhoto"), #imageLiteral(resourceName: "Chart2")]
                
                let fundamentals = Fundamentals()
                
                navigationBarVC.topItem?.title = fundamentals.Fundamentals_page1_FundamentalsDefinition_title
                
                
                var textViews:[NSAttributedString] = [fundamentals.Fundamentals_page1_FundamentalsDefinition_desc_oneHTMLAttributed, fundamentals.Fundamentals_page1_FundamentalsDefinition_desc_twoHTMLAttributed]
                
                
                
                tableView.rowHeight = UITableViewAutomaticDimension
                tableView.estimatedRowHeight = 500
                
                cell.chartImageView.image = charts[indexPath.row]
                
                cell.descriptionTextView.attributedText = textViews[indexPath.row]
                
                
            } else if currentPage == 2 {
                
                
                
                tableView.rowHeight = UITableViewAutomaticDimension
                tableView.estimatedRowHeight = 500
                
                var charts = [#imageLiteral(resourceName: "StockPhoto"), #imageLiteral(resourceName: "Chart2")]
                
                var textViews:[String] = ["View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2View number 2", "Ma WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa WillyMa Willy"]
                
                cell.chartImageView.image = charts[indexPath.row]
                
                cell.descriptionTextView.text = textViews[indexPath.row]
                
                
                
                
            }
            
            
        }
        
        
        
        
        
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Current page is: \(currentPage)")
        
        if mainCourseIndexPath == 1 {
            
            print("Progress value is: \(Float(currentPage / 10))")
            
            progressView.progress = Float(currentPage / 10)
        } else if mainCourseIndexPath == 2 {
            
            print("Progress value is: \(Float(currentPage / 6))")
            
            progressView.progress = Float(currentPage / 6)
        }
        
        
        swipeGestureRecognizer()
        tableView.delegate = self
        navigationBarVC.delegate = self
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defaults = UserDefaults.standard
        
        if segue.identifier == "goToCollectionVC" {
            
            if mainCourseIndexPath == 1 {
                
                if progressView.progress >= 1.00 {
                    
                    let collectionVC = segue.destination as! CollectionLevelsViewController
                    
                    collectionVC.isFinished = true
                    defaults.setValue(true, forKey: "isFinished")
                    
                    
                }
                
                let collectionVC = segue.destination as! CollectionLevelsViewController
                
                collectionVC.currentPageOfCollectionVC = Int(currentPage)
                
                
            } else if mainCourseIndexPath == 2 {
                
                if progressView.progress >= 1.00 {
                    
                    let collectionVC = segue.destination as! CollectionLevelsViewController
                    
                    collectionVC.isFinished = true
                    defaults.setValue(true, forKey: "isFinishedFundamentals")
                    
                    
                }
                
                let collectionVC = segue.destination as! CollectionLevelsViewController
                
                collectionVC.currentPageOfCollectionVC = Int(currentPage)
                
                
                
            }
            
            
            
        }
    }
    
    
}

extension DescriptionViewController {
    
    func goBackIfPageIs0(){
        
        if currentPage == 0 {
            
            performSegue(withIdentifier: "goToCollectionVC", sender: self)
            
        }
        
    }
    
    func progressViewEnded(){
        
        
        if progressView.progress == 1.00 {
            
            performSegue(withIdentifier: "goToCollectionVC", sender: self)
            
        }
        
        
    }
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizerDirection.right {
            currentPage = currentPage - 1
            goBackIfPageIs0()
            
            tableView.rightToLeftAnimation()
            tableView.reloadData()
            less1ProgressView()
            print("Current page is \(currentPage)")
            print("Swipe Right")
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.left {
            print("Swipe Left")
            currentPage = currentPage + 1
            goBackIfPageIs0()
            progressViewEnded()
            tableView.leftToRightAnimation()
            tableView.reloadData()
            add1ProgressView()
            print("Current page is \(currentPage)")
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.up {
            print("Swipe Up")
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.down {
            print("Swipe Down")
        }
    }
    
    func swipeGestureRecognizer(){
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeUp.direction = .up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeDown.direction = .down
        self.view.addGestureRecognizer(swipeDown)
        
    }
    
}

extension UIView { // This will add the functionality of adding animation when the user swipes right or left
    func leftToRightAnimation(duration: TimeInterval = 0.3, completionDelegate: AnyObject? = nil) {
        // Create a CATransition object
        let leftToRightTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided
        if let delegate: AnyObject = completionDelegate {
            leftToRightTransition.delegate = delegate as? CAAnimationDelegate
        }
        
        leftToRightTransition.type = kCATransitionPush
        leftToRightTransition.subtype = kCATransitionFromRight
        leftToRightTransition.duration = duration
        leftToRightTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        leftToRightTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.add(leftToRightTransition, forKey: "leftToRightTransition")
    }
    
    func rightToLeftAnimation(duration:TimeInterval = 0.3, completionDelegate: AnyObject? = nil) {
        
        // Create a CATransition object
        let rightToLeft = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided
        if let delegate: AnyObject = completionDelegate {
            rightToLeft.delegate = delegate as? CAAnimationDelegate
        }
        
        rightToLeft.type = kCATransitionPush
        rightToLeft.subtype = kCATransitionFromLeft
        rightToLeft.duration = duration
        rightToLeft.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        rightToLeft.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.add(rightToLeft, forKey: "rightToLeft")
        
        
        
    }
}


extension DescriptionViewController {
    
    
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    
}

extension CollectionLevelsViewController {
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    
}
