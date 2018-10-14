//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by exxe on 14.10.18.
//  Copyright © 2018 exxe. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeuague(leagueType: "mens")
        
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeuague(leagueType: "women")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeuague(leagueType: "coed")
    }
    
    func selectLeuague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
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
