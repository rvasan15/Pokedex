////
////  TableViewVC-TableViewProtocols.swift
////  MDB_Pokedex
////
////  Created by Rini Vasan on 2/12/20.
////  Copyright © 2020 Rini Vasan. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//extension TableViewVC: UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return pokemonArray.count
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
//
//        let pokemon =  pokemonArray[indexPath.row]
//        cell.pokemonID.text = "ID: \(pokemon.id)"
//
//            cell.pokemonName.text = "Name: \(pokemon.name)"
//
//            DispatchQueue.global().async {
//                if let url = URL(string: pokemon.imageUrl) {
//                    if let data = try? Data(contentsOf: url){
//                        DispatchQueue.main.async {
//                            cell.pokemonImage.image = UIImage(data: data)
//                        }
//                    }
//                    else {
//                        DispatchQueue.main.async {
//                            cell.pokemonImage.image = UIImage(named: "errorImage")
//                        }
//                    }
//                }
//                else {
//                    DispatchQueue.main.async {
//                        cell.pokemonImage.image = UIImage(named: "errorImage")
//                    }
//                }
//            }
//
//
//
//        return cell
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }
//
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "TableViewToAtrributesSegue", sender: pokemonArray[indexPath.row])
//    }
//
//}
