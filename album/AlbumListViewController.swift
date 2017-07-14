//
//  AlbumListViewController.swift
//  album
//
//  Created by MEI KU on 2017/7/9.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit


class AlbumListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as! SongListViewController
        controller.alphabet = segue.identifier
        
        
        
        
    }
    
}
    

