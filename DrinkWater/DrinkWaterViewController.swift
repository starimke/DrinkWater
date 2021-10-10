//
//  DrinkWaterViewController.swift
//  DrinkWater
//
//  Created by 심민규 on 2021/10/11.
//

import UIKit

class DrinkWaterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommendedWater.text = "님의 하루 물 권장 섭뤼량은 입니다."
        recommendedWater.textAlignment = .center
        recommendedWater.textColor = .white
        recommendedWater.font = UIFont.systemFont(ofSize: 20)
    }
    
    @IBOutlet weak var reset: UIBarButtonItem!
    @IBOutlet weak var profile: UIBarButtonItem!
    @IBOutlet weak var recommendedWater: UILabel!
    @IBOutlet weak var mlWater: UILabel!
    @IBOutlet weak var waterPercentage: UILabel!
    
    @IBAction func profileClicked(_ sender: UIBarButtonItem) {
    }
     
    @IBAction func resetClicked(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
    }

}

