//
//  SongListViewController.swift
//  album
//
//  Created by MEI KU on 2017/6/25.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer


class SongListViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var index = 0
    var array = [String]()
    
    @IBOutlet weak var playBtn: UIButton!
    
    @IBAction func prev(_ sender: Any) {
        
        
        if index == 0 {
            index = array.count - 1
            
        }
        else {
            index = index - 1
        }
        let line = array[index]
        let dataArray = line.components(separatedBy: "\t")
        
        songLabel.text = dataArray[0]
        lyricLabel.text = dataArray[1]
        
    }
    
    @IBAction func next(_ sender: Any) {
        
        
        if index == array.count - 1 {
            index = 0
        }
        else {
            index = index + 1
            
        }
        let line = array[index]
        let dataArray = line.components(separatedBy: "\t")
        
        songLabel.text = dataArray[0]
        lyricLabel.text = dataArray[1]
        
        
        
        
    }
    
    var alphabet : String!
 
    
    
    @IBOutlet weak var songLabel: UILabel!
    
    @IBOutlet weak var lyricLabel: UILabel!
    
    @IBOutlet weak var bg: UIImageView!
    
    @IBAction func gobackToEnglishPage(segue:UIStoryboardSegue) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
        
        let url = Bundle.main.url(forResource: alphabet, withExtension: "txt")
        let content = try? String(contentsOf: url!)
        array = content!.components(separatedBy: "\n")
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
        
    do {
        
        
        let filePath = Bundle.main.path(forResource: "POP", ofType: "mp3")
        
            // 將指定為AVAudioPlayer型別的變數與要播放的音效做關聯
        audioPlayer = try  AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: filePath!) as URL)
        audioPlayer.prepareToPlay()
         audioPlayer.numberOfLoops = -1    }
        catch {
        print("Error")
        }
        
        
    }
    
    
    @IBAction func playSound(sender: AnyObject) {
        //audioPlayer.play()
        if audioPlayer.isPlaying == false
        {
            audioPlayer.play()
            playBtn.setTitle("pause", for: .normal)
        }else{
            audioPlayer.pause()
            playBtn.setTitle("play", for: .normal)
        }
        
        
        
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    // MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let navController = segue.destination as! UINavigationController
        let controller = navController.viewControllers.first as! CHViewController
        let line = array[index]
        let dataArray = line.components(separatedBy: "\t")
        
        controller.song = dataArray[2]
        controller.lyric = dataArray[3]
        
        
        
    }
    

}
