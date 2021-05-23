//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 由上博之 on 2021/05/19.
//

import UIKit

class ViewController: UIViewController {
    
    var a: String = "kiyomizu-yoru.jpeg"
    var timer:Timer!
    var timer_sec: Float = 0

    @IBOutlet weak var kiyomizu1: UIImageView!
    @IBOutlet weak var startstop0: UIButton!
    
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var back: UIButton!
    
    @IBAction func go(_ sender: Any) {
        if a == "kiyomizu-yoru.jpeg"{
            a = "kiyomizu-aki.jpeg"
        }
        else if a == "kiyomizu-aki.jpeg"{
            a = "kiyomizu-huyu.jpeg"
        }
        else {
            a = "kiyomizu-yoru.jpeg"
        }
        kiyomizu1.image = UIImage(named:a)
    }
    
    @IBAction func back(_ sender: Any) {
        if a == "kiyomizu-yoru.jpeg"{
            a = "kiyomizu-huyu.jpeg"
        }
        else if a == "kiyomizu-huyu.jpeg"{
            a = "kiyomizu-aki.jpeg"
        }
        else {
            a = "kiyomizu-yoru.jpeg"
        }
        kiyomizu1.image = UIImage(named:a)
    }
    
    @IBAction func tapAction(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kiyomizu1.image = UIImage(named:a)
    }
    
    @objc func updateTimer(_ timer: Timer){
        self.timer_sec += 2
        if a == "kiyomizu-yoru"{
            a = "kiyomizu-aki"
        }
        else if a == "kiyomizu-aki"{
            a = "kiyomizu-huyu"
        }
        else {
            a = "kiyomizu-yoru"
        }
        self.kiyomizu1.image = UIImage(named:a)
    }
    
    @IBAction func startstop(_ sender: Any) {
        if startstop0.titleLabel?.text == "再生"{
            startstop0.setTitle("停止", for: .normal)
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            
            go.isEnabled = false
            back.isEnabled = false
        }
        else {
            startstop0.setTitle("再生", for:.normal)
            self.timer.invalidate()
            
            go.isEnabled = true
            back.isEnabled = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.x = a
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
    
}

