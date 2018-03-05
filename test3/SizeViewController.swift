//
//  SizeViewController.swift
//  test3
//
//  Created by 小西夏穂 on 2018/02/26.
//  Copyright © 2018年 小西夏穂. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController{
    
    @IBOutlet weak var testLabel: UILabel!
    
    var pinchGesture  = UIPinchGestureRecognizer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pincheGestureHandler))
        testLabel.isUserInteractionEnabled = true
        testLabel.addGestureRecognizer(pinchGesture)
    }
    
    @objc func pincheGestureHandler(recognizer:UIPinchGestureRecognizer){
        self.view.bringSubview(toFront: testLabel)
        recognizer.view?.transform = (recognizer.view?.transform)!.scaledBy(x: recognizer.scale, y: recognizer.scale)
        recognizer.scale = 1.0
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
