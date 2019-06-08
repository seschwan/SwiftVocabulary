//
//  VocabController.swift
//  SwiftVocabulary
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation

class VocabularyWordsController {
    
    init() {
        vocabWords = [
            VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
            VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can not be changed after initial creation."),
            VocabularyWord(word: "Function", definition: "A sequence of code instructions that are gathered together and given a name so they can be reused in multiple places. Functions can take input values (arguments) and can return a value upon completion.")
        ]
    }
    
    var vocabWords: [VocabularyWord]
}
