//
//  CollectionViewVC.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/12/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit


extension CollectionViewVC: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
     let searchBar = searchController.searchBar
     filterContentForSearchText(searchBar.text!)
  }
}

class CollectionViewVC: UIViewController, UITabBarDelegate {

    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
     var pokemonArray: [Pokemon] = PokemonGenerator.getPokemonArray()
    var filteredPokemon: [Pokemon] = []
    var filteredPokemonType: [PokeType] = []
    var filteredPokemonPoint: [Int] = []
    let searchController = UISearchController(searchResultsController: nil)
    var sizes: [CGFloat] = [CGFloat(200), CGFloat(200)]
    var gridView: CGFloat = 50
    
    
    
    
    @IBAction func filterButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toFilteredCollectionView", sender: self)
    }
    

        
    var isSearchBarEmpty: Bool {
          return searchController.searchBar.text?.isEmpty ?? true
        }
      
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
      }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // 1
            searchController.searchResultsUpdater = self
           // 2
           searchController.obscuresBackgroundDuringPresentation = false
           // 3
           searchController.searchBar.placeholder = "Search Pokemon"
           // 4
           navigationItem.searchController = searchController
           // 5
           definesPresentationContext = true
        
       sizes = [collectionView.frame.width, collectionView.frame.height/4]
        
        
    }
    
    func filterPokemon() {

        
        pokemonArray = PokemonGenerator.getPokemonArray()
        
        if filteredPokemonType.count == 0 || filteredPokemonPoint.count == 0 {
            return;
        }
        
        var tempArr: [Pokemon] = []
        
        outerLoop: for pokemon in pokemonArray {
            for typePokemon in filteredPokemonType {
            if(!pokemon.types.contains(typePokemon)){
                    continue outerLoop;
                }
            }
            
            if (!(pokemon.attack >= filteredPokemonPoint[0])){
                continue;
            }
            
            if (!(pokemon.defense >= filteredPokemonPoint[1])){
                continue;
            }
            if (!(pokemon.health >= filteredPokemonPoint[2])){
                continue;
            }
            
            if (!(pokemon.specialAttack >= filteredPokemonPoint[3])){
                continue;
            }
            
            if (!(pokemon.specialDefense >= filteredPokemonPoint[4])){
                continue;
            }
            
            if (!(pokemon.speed >= filteredPokemonPoint[5])){
                continue;
            }
            
            if (!(pokemon.total >= filteredPokemonPoint[6])){
                continue;
            }
            
            tempArr += [pokemon]

        }
        
        pokemonArray = tempArr
        
        collectionView.reloadData()
    }
    
    
    
    @IBAction func segControlPressed(_ sender: Any) {
        if segControl.selectedSegmentIndex == 0 {
            sizes = [collectionView.frame.width, collectionView.frame.height/4]
            gridView = 50
        }
        else{
            sizes = [collectionView.frame.width/2.25, collectionView.frame.height/6]
            gridView = 10
    
        }
        collectionView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
         
         if segue.identifier == "CollectionViewToAttributesVC"{
             
             let attributesVC = segue.destination as? AttributesViewController
             
                         
             if let pokemon = sender as? Pokemon {
                 attributesVC?.pokemon = pokemon
             }
             
             
         }
         
     }
    
    
    override func viewDidAppear(_ animated: Bool) {
          collectionView.reloadData()
        filterPokemon()
      }
      

      func filterContentForSearchText(_ searchText: String) {
          filteredPokemon = pokemonArray.filter { (pokemon: Pokemon) -> Bool in
          return pokemon.name.lowercased().contains(searchText.lowercased())
        }
        
        collectionView.reloadData()
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
