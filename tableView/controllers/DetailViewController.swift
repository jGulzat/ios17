//
//  DetailViewController.swift
//  tableView
//
//  Created by Gulzat on 15/4/23.
//

import UIKit

class DetailViewController: UIViewController {

    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let movie = movie else { return }
        print("movie name: \(movie.name)")
        print("movie description: \(movie.description)")
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
