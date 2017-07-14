//
//  CHViewController.swift
//  album
//
//  Created by MEI KU on 2017/7/12.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class CHViewController: UIViewController {
    
    @IBOutlet weak var songLabel: UILabel!
    
    @IBOutlet weak var lyricLabel: UILabel!
    
    var song: String!
    var lyric: String!
    
    @IBOutlet weak var bg: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songLabel.text = song
        lyricLabel.text = lyric
        songLabel.alpha = 0
        lyricLabel.alpha = 0
        UIView.animate(withDuration: 2) {
            self.songLabel.alpha = 1
            self.lyricLabel.alpha = 1
            
        }
        
        // Do any additional setup after loading the view.
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
