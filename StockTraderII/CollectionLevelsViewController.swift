//
//  CollectionLevelsViewController.swift
//  StockTraderII
//
//  Created by Francisco on 22/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//


import UIKit
import CoreData


class CollectionLevelsViewController: UIViewController, UICollectionViewDelegate{
    
    @IBOutlet weak var goBackBarButton: UIBarButtonItem!
    
    @IBAction func goBackBarButtonIsPressed(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var navigationBarCollectionVC: UINavigationBar!
    
    var isFinished:Bool = false
    
    
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    
    var currentPageOfCollectionVC:Int = 1
    
    @IBOutlet weak var courseCollectionView: UICollectionView!
    
    @IBAction func unwindToCollectionVC(segue:UIStoryboardSegue) {
        
        
        print("Last page seen by the user is: \(currentPageOfCollectionVC)")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        collectionViewOutlet.reloadData()
    }
    
    var mainCourseIndexPath = 0
    
    
    
    var destination = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        
        navigationBarCollectionVC.tintColor = UIColor.white
        goBackBarButton.tintColor = UIColor.white
        
        
        print("CollectionLevelController loaded")
        print("Main Course indexPath is \(mainCourseIndexPath)")
        
        courseCollectionView.delegate = self
        
        if let layout = courseCollectionView.collectionViewLayout as? PinterestLayout {
            
            layout.delegate = self
        } else {
            
            print("Layout couldn't be loaded")
        }
        
        courseCollectionView.contentInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool {
        
        
        return true
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
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizerDirection.right {
            
            collectionViewOutlet.leftToRightAnimationCollection()
            print("Swipe Right")
            
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.left {
            print("Swipe Left")
            collectionViewOutlet.rightToLeftAnimationCollection()
            
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.up {
            print("Swipe Up")
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.down {
            print("Swipe Down")
        }
    }
    
    
}

extension CollectionLevelsViewController: PinterestLayoutDelegate {
    
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        
        
        switch mainCourseIndexPath {
        case 1:
            navigationBarCollectionVC.topItem?.title = "Covering Basics"
            
            navigationBarCollectionVC.barTintColor = hexStringToUIColor(hex: "804FA1")
            
            let buttonArray = basicsButtonArray(currentPage: currentPageOfCollectionVC)
            
            let button  = buttonArray![indexPath.item]
            
            let height = button.imageView?.image?.size.height
            
            return height!
            
            
        case 2:
            navigationBarCollectionVC.topItem?.title = "Understanding Fundamentals"
            
            navigationBarCollectionVC.barTintColor = hexStringToUIColor(hex: "4844AD")
            
            let buttonArray = fundamentalsButtonArray(currentPage: currentPageOfCollectionVC)
            
            let button = buttonArray![indexPath.item]
            
            let height = button.imageView?.image?.size.height
            
            return height!
            
            
        default:
            return 500
        }
        
        
        
        
    }
    
    
    
    
    
}

extension CollectionLevelsViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        switch mainCourseIndexPath {
        case 1:
            let buttonsArray = basicsButtonArray(currentPage: currentPageOfCollectionVC)
            
            return buttonsArray!.count
            
        case 2:
            
            let buttonsArray = fundamentalsButtonArray(currentPage: currentPageOfCollectionVC)
            
            return buttonsArray!.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if mainCourseIndexPath == 1 { // If Covering Basics Was chosen
            
            let buttonsArray = basicsButtonArray(currentPage: currentPageOfCollectionVC)
            
            let stackView = UIStackView(arrangedSubviews: [buttonsArray![indexPath.row]])
            
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.alignment = .fill
            stackView.spacing = 5
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            cell.addSubview(stackView)
            
            
        }
        
        switch mainCourseIndexPath {
        case 1:
            let buttonsArray = basicsButtonArray(currentPage: currentPageOfCollectionVC)
            
            let stackView = UIStackView(arrangedSubviews: [buttonsArray![indexPath.row]])
            
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.alignment = .fill
            stackView.spacing = 5
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            cell.addSubview(stackView)
            
        case 2:
            
            let buttonsArray = fundamentalsButtonArray(currentPage: currentPageOfCollectionVC)
            
            let stackView = UIStackView(arrangedSubviews: [buttonsArray![indexPath.row]])
            
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.alignment = .fill
            stackView.spacing = 5
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            cell.addSubview(stackView)
            
        default:
            return cell
        }
        
        
        
        
        
        
        return cell
    }
    
    @objc func goToDescriptionVC(sender: UIButton){
        
        print("Sender tag: \(sender.tag)")
        
        if mainCourseIndexPath == 1{
            
            if sender.tag <= UserDefaults.standard.object(forKey: "userCount") as! Int {
                destination = sender.tag
                print("Destination is: \(destination)")
                performSegue(withIdentifier: "goToDescription", sender: self)
                
            }
            
        } else if mainCourseIndexPath == 2 {
            
            if sender.tag <= UserDefaults.standard.object(forKey: "userCountFundamentals") as! Int {
                
                destination = sender.tag
                
                print("Destination is: \(destination)")
                
                performSegue(withIdentifier: "goToDescription", sender: self)
                
                
            }
            
            
            
        }
        
        
        
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDescription" {
            
            let descriptionVC = segue.destination as! DescriptionViewController
            
            descriptionVC.mainCourseIndexPath = mainCourseIndexPath
            
            
            descriptionVC.currentPage = Float(destination)
            
        }
        
    }
    
}

extension UIView { // This will add the functionality of adding animation when the user swipes right or left
    func leftToRightAnimationCollection(duration: TimeInterval = 0.3, completionDelegate: AnyObject? = nil) {
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
    
    func rightToLeftAnimationCollection(duration:TimeInterval = 0.3, completionDelegate: AnyObject? = nil) {
        
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




