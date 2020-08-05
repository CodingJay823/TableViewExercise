//
//  ViewController.swift
//  JadasTableViewApp
//
//  Created by Jada Harmon on 8/4/20.
//  Copyright © 2020 Jada Harmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let jadasBooks = ["The Skin I'm In", "The Bluest Eye", "The Bully Book", "The Amulet", "The Ruling Class", "Thier Eyes Were Watching God", "Lumine", "Midnight Poppy Land", "True Beauty", "Devil Number 4", "Where Tangents Meet", "Orange Marmalade", "unTouchable", "T.H.U.G", "On The Come Up", "Faust", "Ecstasy Hearts", "Super Secret", "The House Of Hades", "Boy Proof"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Tells how many rows there will be depending on how many objects are in the array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return jadasBooks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellID")
        cell?.textLabel?.text = jadasBooks[indexPath.row]
        return cell!
    }


}

