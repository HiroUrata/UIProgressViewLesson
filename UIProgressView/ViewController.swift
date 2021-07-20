//
//  ViewController.swift
//  UIProgressView
//
//  Created by UrataHiroki on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressLabel: UILabel!
    
    let progressView = ProgressView()
    
    var progressLabelCount = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        progressLabel.text = "0"
       
        progressView.createProgressView(x: 20, y: 200, width: self.view.frame.size.width - 40, height: 40, targetView: self.view)
        
    }

    @IBAction func start(_ sender: Any) {
        
        if progressView.uiprogressView.progress == 0{
        
        for progressCount in 1...20{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(progressCount)) {
                
                self.progressView.uiprogressView.setProgress(self.progressView.uiprogressView.progress + 0.05, animated: true)
                
                self.progressLabelCount = self.progressLabelCount + 5
                
                self.progressLabel.text = String(self.progressLabelCount)
                
            }
            
        }
      
        }else{
            
            progressView.uiprogressView.progress = 0
            self.progressLabel.text = "0"
            
            for progressCount in 1...20{
                
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(progressCount)) {
                    
                    self.progressView.uiprogressView.setProgress(self.progressView.uiprogressView.progress + 0.05, animated: true)
                    
                    self.progressLabelCount = self.progressLabelCount + 5
                    
                    self.progressLabel.text = String(self.progressLabelCount)
                    
                }
                
            }
            
        }
        
    }
    
}

