//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Andrew R Madsen on 6/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord, isViewLoaded else { return }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
}
