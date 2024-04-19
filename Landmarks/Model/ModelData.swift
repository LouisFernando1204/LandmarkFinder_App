//
//  ModelData.swift
//  Landmarks
//
//  Created by student on 18/04/24.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

// function ini digunakan untuk memuat dan mongonversi data dari tipe JSON sehingga bisa digunakan untuk mengelola data tersebut dengan mudah
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
