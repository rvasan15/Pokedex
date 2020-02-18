//
//  FilteredVC.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/16/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit

class FilteredVC: UIViewController, UINavigationControllerDelegate {

    
   
    @IBOutlet weak var bugSwitch: UISwitch!
    
    @IBOutlet weak var grassSwitch: UISwitch!
    @IBOutlet weak var darkSwitch: UISwitch!

    @IBOutlet weak var groundSwitch: UISwitch!
    
    @IBOutlet weak var dragonSwitch: UISwitch!
    @IBOutlet weak var iceSwitch: UISwitch!
    
    @IBOutlet weak var electricSwitch: UISwitch!
    
    @IBOutlet weak var normalSwitch: UISwitch!
    
    @IBOutlet weak var fairySwitch: UISwitch!
    
    @IBOutlet weak var poisonSwitch: UISwitch!
    
    @IBOutlet weak var fightingSwitch: UISwitch!
    
    @IBOutlet weak var pyschicSwitch: UISwitch!
    
    @IBOutlet weak var fireSwitch: UISwitch!
    
    @IBOutlet weak var rockSwitch: UISwitch!
    
    @IBOutlet weak var flyingSwitch: UISwitch!
    
    @IBOutlet weak var steelSwitch: UISwitch!
    
    @IBOutlet weak var ghostSwitch: UISwitch!
    
    @IBOutlet weak var waterSwitch: UISwitch!
    
    @IBOutlet weak var unknownSwitch: UISwitch!
    
    @IBOutlet weak var attackField: UITextField!
    
    @IBOutlet weak var defenseField: UITextField!
    
    @IBOutlet weak var healthField: UITextField!
    
    @IBOutlet weak var speedField: UITextField!
    
    @IBOutlet weak var totalField: UITextField!
    
    @IBOutlet weak var specialAttackField: UITextField!
    
    @IBOutlet weak var specialDefenseField: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.delegate = self

        // Do any additional setup after loading the view.
        
        var typeArray = [bugSwitch, grassSwitch, darkSwitch, groundSwitch, iceSwitch, dragonSwitch, electricSwitch, normalSwitch, fairySwitch, poisonSwitch, fightingSwitch, pyschicSwitch, fireSwitch, rockSwitch, flyingSwitch, steelSwitch, ghostSwitch, waterSwitch, unknownSwitch]
        
        
        for type in typeArray {
            type?.setOn(false, animated: false)
        }
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
    
        var tempFilteredPokemonType: [PokeType] = []
        var tempFilteredPokemonPoint: [Int] = []
        
        
        if bugSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Bug]
        }
        
        if grassSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Grass]
        }
        
        if darkSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Dark]
        }
        
        if groundSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Ground]
        }
        
        if iceSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Ice]
        }
        
        if dragonSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Dragon]
        }
        
        
        if electricSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Electric]
        }
        
        if normalSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Normal]
        }
        
        if fairySwitch.isOn {
            tempFilteredPokemonType += [PokeType.Fairy]
        }
        
        if poisonSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Poison]
        }
        
        if fightingSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Fighting]
        }
        
        if pyschicSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Psychic]
        }
        
        if fireSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Fire]
        }
        
        if rockSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Rock]
        }
        
        if flyingSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Flying]
        }
        
        if steelSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Steel]
        }
        
        if ghostSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Ghost]
        }
        
        if waterSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Water]
        }
        
        if unknownSwitch.isOn {
            tempFilteredPokemonType += [PokeType.Unknown]
        }
        
        
        
            let temp0 = attackField.text ?? ""
            let tempint0 = Int(temp0) ?? 0
            tempFilteredPokemonPoint += [tempint0]
        
        
       
            let temp1 = defenseField.text ?? ""
            let tempint1 = Int(temp1) ?? 0
            tempFilteredPokemonPoint += [tempint1]
        
        
       
            let temp2 = healthField.text ?? ""
            let tempint2 = Int(temp2) ?? 0
            tempFilteredPokemonPoint += [tempint2]
        
        
      
            let temp3 = speedField.text ?? ""
            let tempint3 = Int(temp3) ?? 0
            tempFilteredPokemonPoint += [tempint3]
        
        
        
            let temp4 = totalField.text ?? ""
            let tempint4 = Int(temp4) ?? 0
            tempFilteredPokemonPoint += [tempint4]
        
        
      
            let temp5 = specialAttackField.text ?? ""
            let tempint5 = Int(temp5) ?? 0
            tempFilteredPokemonPoint += [tempint5]
        
        
        
            let temp6 = specialDefenseField.text ?? ""
            let tempint6 = Int(temp6) ?? 0
            tempFilteredPokemonPoint += [tempint6]
        
    
        
        (viewController as? CollectionViewVC)?.filteredPokemonType = tempFilteredPokemonType
         (viewController as? CollectionViewVC)?.filteredPokemonPoint = tempFilteredPokemonPoint
        
        
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

