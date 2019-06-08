//
//  ViewController.swift
//  SwiftVocabulary
//
//  Created by Seschwan on 6/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class SwiftVocabularyVC: UIViewController {

    
    // Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    let vocabController = VocabularyWordsController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension SwiftVocabularyVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vocabController.vocabWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let vocabWord = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToDefVC" {
            guard let detailVC = segue.destination as? DefinitionVC,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            detailVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
    }
    
    
    
}

extension SwiftVocabularyVC: UITableViewDelegate {
    
    
}

