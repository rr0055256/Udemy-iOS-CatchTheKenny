//
//  ViewController.swift
//  CatchTheKenny
//
//  Created by Raman Rajagopal on 01/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var uiImageView1: UIImageView!
    
    @IBOutlet weak var uiImageView3: UIImageView!
    @IBOutlet weak var uiImageView2: UIImageView!
    
    @IBOutlet weak var uiImageView4: UIImageView!
    
    
    @IBOutlet weak var uiImageView5: UIImageView!
    
    
    @IBOutlet weak var uiImageView6: UIImageView!
    
    @IBOutlet weak var uiImageView7: UIImageView!
    
    @IBOutlet weak var uiImageView8: UIImageView!
    
    @IBOutlet weak var uiImageView9: UIImageView!
    
    var timer = Timer()
    var counter = 0
    var score = 0
    var highScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        initializeImageViews()
        initializeTimer()
        let highScoreRetrieved = UserDefaults.standard.integer(forKey: "HighScore")
        highScoreLabel.text = "High Score: \(highScoreRetrieved)"
    }
    
    @objc func timerFunction(){
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        hideAndShowImageViewsInRandom()
        if(counter == 0){
            timer.invalidate()
            timeLabel.text = "Time's over"
            displayReplayPopUp()
        }
        
        
    }
    
    func hideAndShowImageViewsInRandom(){
        var random = Int.random(in: 1...9)
        if random == 1{
            uiImageView1.isHidden = false
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        }else if random == 2{
            uiImageView1.isHidden = true
            uiImageView2.isHidden = false
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 3 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = false
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 4 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = false
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 5 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = false
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 6 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = false
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 7 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = false
            uiImageView8.isHidden = true
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 8 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = false
            uiImageView9.isHidden = true
            
            refreshImageViews()
        } else if random == 9 {
            uiImageView1.isHidden = true
            uiImageView2.isHidden = true
            uiImageView3.isHidden = true
            uiImageView4.isHidden = true
            uiImageView5.isHidden = true
            uiImageView6.isHidden = true
            uiImageView7.isHidden = true
            uiImageView8.isHidden = true
            uiImageView9.isHidden = false
            
            refreshImageViews()
        }
    }
    
    func refreshImageViews() {
        uiImageView1.layoutIfNeeded()
        uiImageView2.layoutIfNeeded()
        uiImageView3.layoutIfNeeded()
        uiImageView4.layoutIfNeeded()
        uiImageView5.layoutIfNeeded()
        uiImageView6.layoutIfNeeded()
        uiImageView7.layoutIfNeeded()
        uiImageView8.layoutIfNeeded()
        uiImageView9.layoutIfNeeded()
    }
    
    func initializeTimer(){
        counter = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    func initializeImageViews(){
        uiImageView1.isUserInteractionEnabled = true
        uiImageView2.isUserInteractionEnabled = true
        uiImageView3.isUserInteractionEnabled = true
        uiImageView4.isUserInteractionEnabled = true
        uiImageView5.isUserInteractionEnabled = true
        uiImageView6.isUserInteractionEnabled = true
        uiImageView7.isUserInteractionEnabled = true
        uiImageView8.isUserInteractionEnabled = true
        uiImageView9.isUserInteractionEnabled = true
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(incrementScore))
        
        uiImageView1.addGestureRecognizer(gestureRecognizer1)
        uiImageView2.addGestureRecognizer(gestureRecognizer2)
        uiImageView3.addGestureRecognizer(gestureRecognizer3)
        uiImageView4.addGestureRecognizer(gestureRecognizer4)
        uiImageView5.addGestureRecognizer(gestureRecognizer5)
        uiImageView6.addGestureRecognizer(gestureRecognizer6)
        uiImageView7.addGestureRecognizer(gestureRecognizer7)
        uiImageView8.addGestureRecognizer(gestureRecognizer8)
        uiImageView9.addGestureRecognizer(gestureRecognizer9)
    }
    
    @objc func incrementScore(){
        score += 1
        scoreLabel.text = "Score \(score)"
        print("Image clicked")
    }
    
    func displayReplayPopUp(){
        let alert = UIAlertController(title: "Timer", message: "Time ended", preferredStyle: .alert)
        
        let okButtonAction = UIAlertAction(title: "Ok", style: .default) { action in
            print("Ok button clicked")
        }
        
        alert.addAction(okButtonAction)
        
        let replayButtonAction = UIAlertAction(title: "Replay", style: .default) { action in
            self.initializeTimer()
            self.setHighScore()
        }
        
        alert.addAction(replayButtonAction)
        
        present(alert, animated: true,completion: nil)
        
    }
    
    func setHighScore(){
        let highScoreRetrieved = UserDefaults.standard.integer(forKey: "HighScore")
        if score > highScoreRetrieved{
            highScore = score
        }
        score = 0
        highScoreLabel.text = "High Score: \(highScore)"
        highScoreLabel.layoutIfNeeded()
        UserDefaults.standard.set(highScore, forKey: "HighScore")
    }


}

