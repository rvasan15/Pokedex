//
//  AttributesViewController.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/13/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit

class AttributesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonName.text = "Name: \(pokemon?.name ?? "")"
        if let id = pokemon?.id{
            pokemonID.text = "ID: \(id)"
        }
        if let attack = pokemon?.attack{
            pokemonAttack.text = "Attack: \(attack)"
        }
        if let defense = pokemon?.defense {
            pokemonDefense.text = "Defense: \(defense)"
        }
        
        if let health = pokemon?.health{
            pokemonHealth.text = "Health: \(health)"
        }
        
        if let specialattack = pokemon?.specialAttack{
            pokemonSpecialAttack.text = "Special Attack: \(specialattack)"
        }
        
        if let specialdefense = pokemon?.specialDefense{
             pokemonSpecialDefense.text = "Special Defense: \(specialdefense)"
        }
       
        if let speed = pokemon?.speed {
            pokemonSpeed.text = "Speed: \(speed)"
        }
   
        if let total = pokemon?.total{
            pokemonTotal.text = "Total: \(total)"
        }
        
        var typeStrings: [String] = []
        if let types = pokemon?.types{
            for type in types {
                typeStrings.append("\(type)")
            }
            pokemonTypes.text = "Types: \(typeStrings)"
        }
        

            DispatchQueue.global().async {
                if let url = URL(string: self.pokemon?.imageUrl ?? "") {
                        if let data = try? Data(contentsOf: url){
                            DispatchQueue.main.async {
                                self.pokemonImage.image = UIImage(data: data)
                            }
                        }
                        else {
                            DispatchQueue.main.async {
                                self.pokemonImage.image = UIImage(named: "errorImage")
                            }
                        }
                    }
                    else {
                        DispatchQueue.main.async {
                            self.pokemonImage.image = UIImage(named: "errorImage")
                        }
                    }
                }

        
    }
        
    var pokemon: Pokemon?
    
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonName: UILabel!
    
    
    @IBOutlet weak var pokemonID: UILabel!
    
    @IBOutlet weak var pokemonAttack: UILabel!
    
    
    @IBOutlet weak var pokemonDefense: UILabel!
    
    @IBOutlet weak var pokemonHealth: UILabel!
    
    @IBOutlet weak var pokemonSpecialAttack: UILabel!
    
    @IBOutlet weak var pokemonSpecialDefense: UILabel!
    
    @IBOutlet weak var pokemonSpeed: UILabel!
    
    @IBOutlet weak var pokemonTotal: UILabel!
    
    @IBOutlet weak var pokemonTypes: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
