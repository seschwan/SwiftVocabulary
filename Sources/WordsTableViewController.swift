//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Andrew R Madsen on 6/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabWordCell", for: indexPath)

        let word = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = word.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinition" {
            guard let detailVC = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
            detailVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
        
    }
    
    // MARK: - Properties
    
    let vocabController = VocabularyWordsController()

}
