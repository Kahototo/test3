//
//  SecondViewController.swift
//  test3
//
//  Created by 小西夏穂 on 2018/02/23.
//  Copyright © 2018年 小西夏穂. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // UIImage のインスタンスを設定
    let image1:UIImage = UIImage(named:"face1.png")!
    let image2:UIImage = UIImage(named:"face2.png")!
    let image3:UIImage = UIImage(named:"face3.png")!
    let image4:UIImage = UIImage(named:"face4.png")!
    let image5:UIImage = UIImage(named:"color1.png")!
    let image6:UIImage = UIImage(named:"color2.png")!
    let image7:UIImage = UIImage(named:"color3.png")!
    let image8:UIImage = UIImage(named:"color4.png")!
    
    // UIButton のインスタンスを生成
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    
    
    //buttonをタップした時のアクション
    @objc func pushStamp(sender:UIButton){
        print("Hello!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // ボタンの設置座標とサイズを設定する.
        button1.frame = CGRect(x: 25, y: 610, width: 50, height: 50)
        button2.frame = CGRect(x: 90, y: 610, width: 50, height: 50)
        button3.frame = CGRect(x: 163, y: 610, width: 50, height: 50)
        button4.frame = CGRect(x: 230, y: 610, width: 50, height: 50)
        button5.frame = CGRect(x: 300, y: 610, width: 50, height: 50)
        button6.frame = CGRect(x: 350, y: 610, width: 50, height: 50)
        button7.frame = CGRect(x: 400, y: 610, width: 50, height: 50)
        button8.frame = CGRect(x: 450, y: 610, width: 50, height: 50)
        
        
        // button1 (buttonの画像・背景色・イベントを追加)
        button1.setImage(image1, for: .normal)
        button1.backgroundColor = UIColor.clear
        button1.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button2
        button2.setImage(image2, for: .normal)
        button2.backgroundColor = UIColor.clear
        button2.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button3
        button3.setImage(image3, for: .normal)
        button3.backgroundColor = UIColor.clear
        button3.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button4
        button4.setImage(image4, for: .normal)
        button4.backgroundColor = UIColor.clear
        button4.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button5
        button5.setImage(image5, for: .normal)
        button5.backgroundColor = UIColor.clear
        button5.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button6
        button6.setImage(image6, for: .normal)
        button6.backgroundColor = UIColor.clear
        button6.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button7
        button7.setImage(image7, for: .normal)
        button7.backgroundColor = UIColor.clear
        button7.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        // button8
        button8.setImage(image8, for: .normal)
        button8.backgroundColor = UIColor.clear
        button8.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        
        
        //スクロールビューについて//
        
        //UIScrollViewのインスタンス作成
        var scrollView = UIScrollView()
        //scrollViewの大きさを設定。
        scrollView = UIScrollView(frame: CGRect(x:0, y:600, width: 375, height: 100))
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:self.view.frame.width * 4, height:100)
        //スクロールビューの色
        scrollView.backgroundColor = UIColor.gray
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
        
        //buttonをスクロールビューに追加//
        
        // 実際にviewに表示する
        scrollView.addSubview(button1)
        scrollView.addSubview(button2)
        scrollView.addSubview(button3)
        scrollView.addSubview(button4)
        scrollView.addSubview(button5)
        scrollView.addSubview(button6)
        scrollView.addSubview(button7)
        scrollView.addSubview(button8)
        
        // ViewにButtonを追加
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        
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

