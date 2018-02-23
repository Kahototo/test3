//
//  ThirdViewController.swift
//  test3
//
//  Created by 小西夏穂 on 2018/02/23.
//  Copyright © 2018年 小西夏穂. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
//    //スタンプ画像の名前が入った配列
    var imageNameArray: [String] = ["face1.png", "face2.png", "face3.png", "face4.png","color1.png", "color2.png", "color3.png", "color4.png"]
    
    //選択しているスタンプ画像の番号
    var imageIndex: Int = 0
    
    //スタンプ画像が入るImageView
    var stampImageView: UIImageView!

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
    
    
    
    @IBAction func pushStamp1(sender:UIButton) {
        imageIndex = 1
    }
    @IBAction func pushStamp2(sender:UIButton) {
        imageIndex = 2
    }
    @IBAction func pushStamp3(sender:UIButton) {
        imageIndex = 3
    }
    @IBAction func pushStamp4(sender:UIButton) {
        imageIndex = 4
    }
    @IBAction func pushStamp5(sender:UIButton) {
        imageIndex = 5
    }
    @IBAction func pushStamp6(sender:UIButton) {
        imageIndex = 6
    }
    @IBAction func pushStamp7(sender:UIButton) {
        imageIndex = 7
    }
    @IBAction func pushStamp8(sender:UIButton) {
        imageIndex = 8
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
        button1.addTarget(self, action: #selector(pushStamp1(sender: )), for: .touchUpInside)
        
        // button2
        button2.setImage(image2, for: .normal)
        button2.backgroundColor = UIColor.clear
        button2.addTarget(self, action: #selector(pushStamp2(sender: )), for: .touchUpInside)
        
        // button3
        button3.setImage(image3, for: .normal)
        button3.backgroundColor = UIColor.clear
        button3.addTarget(self, action: #selector(pushStamp3(sender: )), for: .touchUpInside)
        
        // button4
        button4.setImage(image4, for: .normal)
        button4.backgroundColor = UIColor.clear
        button4.addTarget(self, action: #selector(pushStamp4(sender: )), for: .touchUpInside)
        
        // button5
        button5.setImage(image5, for: .normal)
        button5.backgroundColor = UIColor.clear
        button5.addTarget(self, action: #selector(pushStamp5(sender: )), for: .touchUpInside)
        
        // button6
        button6.setImage(image6, for: .normal)
        button6.backgroundColor = UIColor.clear
        button6.addTarget(self, action: #selector(pushStamp6(sender: )), for: .touchUpInside)
        
        // button7
        button7.setImage(image7, for: .normal)
        button7.backgroundColor = UIColor.clear
        button7.addTarget(self, action: #selector(pushStamp7(sender: )), for: .touchUpInside)
        
        // button8
        button8.setImage(image8, for: .normal)
        button8.backgroundColor = UIColor.clear
        button8.addTarget(self, action: #selector(pushStamp8(sender: )), for: .touchUpInside)
        
        
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //タッチされた位置を取得
        let touch:UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.view)
        
        //もし,imageIndexが0でない　（押すスタンプが選ばれていない）とき
        if imageIndex != 0 {
        
        //スタンプサイズを40pxの正方形に指定（UIImageViewの位置やサイズを指定してインスタンスを作る）
        stampImageView = UIImageView(frame: CGRect(x: 0, y:0, width: 40, height: 40))
        
        //押されたスタンプの画像を指定
        let image: UIImage = UIImage(named: imageNameArray[imageIndex - 1])!
        stampImageView.image = image
        
        //タッチされた位置に画像を置く
        stampImageView.center = CGPoint(x: location.x ,y : location.y)
        print(stampImageView.center.y)
        let y = stampImageView.center.y
        if y < 400 {
            self.view.addSubview(stampImageView)
            
        }else{
            
        }
    }
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


