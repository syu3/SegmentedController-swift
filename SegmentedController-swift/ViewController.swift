//
//  ViewController.swift
//  SegmentedController-swift
//
//  Created by 加藤 周 on 2015/03/06.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySegLabel: UILabel = UILabel(frame: CGRectMake(0,0,150,150))
    override func viewDidLoad() {
        super.viewDidLoad()
        // 表示する配列を作成する.
        let myArray: NSArray = ["Red","Blue","Green"]
        
        // SegmentedControlを作成する.
        let mySegcon: UISegmentedControl = UISegmentedControl(items: myArray)
        mySegcon.center = CGPoint(x: self.view.frame.width/2, y: 400)
        mySegcon.backgroundColor = UIColor.grayColor()
        mySegcon.tintColor = UIColor.whiteColor()
        
        // イベントを追加する.
        mySegcon.addTarget(self, action: "segconChanged:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Viewに追加する.
        self.view.addSubview(mySegcon)
        
        // Labelを作成する.
        mySegLabel.backgroundColor = UIColor.whiteColor()
        mySegLabel.layer.masksToBounds = true
        mySegLabel.layer.cornerRadius = 75.0
        mySegLabel.textColor = UIColor.whiteColor()
        mySegLabel.shadowColor = UIColor.grayColor()
        mySegLabel.font = UIFont.systemFontOfSize(CGFloat(30))
        mySegLabel.textAlignment = NSTextAlignment.Center
        mySegLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        // Viewの背景色をCyanにする.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // Viewに追加する.
        self.view.addSubview(mySegLabel);
    }
    
    func segconChanged(segcon: UISegmentedControl){
        
        switch(segcon.selectedSegmentIndex){
        case 0:
            mySegLabel.backgroundColor = UIColor.redColor()
            
        case 1:
            mySegLabel.backgroundColor = UIColor.blueColor()
            
        case 2:
            mySegLabel.backgroundColor = UIColor.greenColor()
            
        default:
            println("Error")
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

