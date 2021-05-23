//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 由上博之 on 2021/05/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var kiyomizu2: UIImageView!

    var x:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        kiyomizu2.image = UIImage(named:x)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
