//
//  SongListViewController.swift
//  album
//
//  Created by MEI KU on 2017/6/25.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class SongListViewController: UIViewController {
    
    var alphabet : String!
    
    
    @IBOutlet weak var songLabel: UILabel!
    
    @IBOutlet weak var lyricLabel: UILabel!
    
    @IBOutlet weak var bg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
        
        let url = Bundle.main.url(forResource: alphabet, withExtension: "txt")
        let content = try? String(contentsOf: url!)
        let array = content!.components(separatedBy: "\n")
        let line = array[0]
        let dataArray = line.components(separatedBy: "\t")
        
        songLabel.text = dataArray[0]
        lyricLabel.text = dataArray[1]
        
        navigationItem.title = alphabet
        
        if alphabet == "Reflection" {
            bg.image = UIImage(named: "bg2")
        }
            
       if alphabet == "Sense" {
            bg.image = UIImage(named: "bg3")
        }
        
        if alphabet == "ヒカリノアトリエ" {
            bg.image = UIImage(named: "bg1")
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
