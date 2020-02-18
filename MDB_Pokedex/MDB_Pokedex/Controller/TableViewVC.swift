////
////  TableViewVC.swift
////  MDB_Pokedex
////
////  Created by Rini Vasan on 2/12/20.
////  Copyright © 2020 Rini Vasan. All rights reserved.
////
//
//import UIKit
//
//extension TableViewVC: UISearchResultsUpdating {
//  func updateSearchResults(for searchController: UISearchController) {
//     let searchBar = searchController.searchBar
//     filterContentForSearchText(searchBar.text!)
//  }
//}
//
//class TableViewVC: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//    var pokemonArray: [Pokemon] = PokemonGenerator.getPokemonArray()
//    var filteredCandies: [Pokemon] = []
//    let searchController = UISearchController(searchResultsController: nil)
//
//
//    var isSearchBarEmpty: Bool {
//        return searchController.searchBar.text?.isEmpty ?? true
//      }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // 1
//        searchController.searchResultsUpdater = self
//        // 2
//        searchController.obscuresBackgroundDuringPresentation = false
//        // 3
//        searchController.searchBar.placeholder = "Search Pokemon"
//        // 4
//        navigationItem.searchController = searchController
//        // 5
//        definesPresentationContext = true
//    }
//
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//
//        if segue.identifier == "TableViewToAtrributesSegue"{
//
//            let attributesVC = segue.destination as? AttributesViewController
//
//
//            if let pokemon = sender as? Pokemon {
//                attributesVC?.pokemon = pokemon
//            }
//
//
//        }
//
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        tableView.reloadData()
//    }
//
//
//    func filterContentForSearchText(_ searchText: String) {
//        filteredCandies = pokemonArray.filter { (pokemon: Pokemon) -> Bool in
//        return pokemon.name.lowercased().contains(searchText.lowercased())
//      }
//
//      tableView.reloadData()
//    }
//
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
