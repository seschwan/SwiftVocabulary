//
//  DefinitionVC.swift
//  SwiftVocabulary
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class DefinitionVC: UIViewController {
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var vocabDefWord: UILabel!
    @IBOutlet weak var defText: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let vocabWord = self.vocabWord, isViewLoaded else { return }
        vocabDefWord.text = vocabWord.word
        defText.text = vocabWord.definition
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
