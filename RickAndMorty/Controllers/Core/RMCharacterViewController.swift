//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/3/24.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(String(describing: model)))
            case .failure(let error):
                print(String(String(describing: error)))
            }
        }
        
    }

}

