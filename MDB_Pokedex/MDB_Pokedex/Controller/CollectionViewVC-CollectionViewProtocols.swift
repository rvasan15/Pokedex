//
//  CollectionViewVC-CollectionViewProtocols.swift
//  MDB_Pokedex
//
//  Created by Rini Vasan on 2/12/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import Foundation
import UIKit

extension CollectionViewVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isFiltering {
          return filteredPokemon.count
        }
          
        return pokemonArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
               
        var pokemon:Pokemon

        if isFiltering {
            pokemon = filteredPokemon[indexPath.row]
            } else {
                pokemon = pokemonArray[indexPath.row]
            }
        
                cell.pokemonID.text = "ID: \(pokemon.id)"
                   
                   cell.pokemonName.text = "Name: \(pokemon.name)"
                
                if let url = URL(string: pokemon.imageUrl) {
                   if let data = try? Data(contentsOf: url){
                           cell.pokemonImage.image = UIImage(data: data)
                   }
                   else {
                           cell.pokemonImage.image = UIImage(named: "errorImage")
                   }
               }
               else {
                    cell.pokemonImage.image = UIImage(named: "errorImage")
               }
        
        cell.gridViewConstraint.constant = gridView
               
        return cell
               
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "CollectionViewToAttributesVC", sender: pokemonArray[indexPath.row])
    }
    
     func collectionView(_ collectionView: UICollectionView,
                       layout collectionViewLayout: UICollectionViewLayout,
                       sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: sizes[0], height: sizes[1])
    }
}
