//
//  ProgressView.swift
//  UIProgressView
//
//  Created by UrataHiroki on 2021/07/20.
//

import Foundation
import UIKit

class ProgressView:UIViewController{
    
    let uiprogressView = UIProgressView()
    
    func createProgressView(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, targetView:UIView){
        
        uiprogressView.frame = CGRect(x: x, y: y, width: width, height: height)
        
        uiprogressView.backgroundColor = .white
        uiprogressView.progress = 0
        uiprogressView.progressViewStyle = .bar
        uiprogressView.progressTintColor = .systemOrange
        
        targetView.addSubview(uiprogressView)
        
    }
    
    
}

