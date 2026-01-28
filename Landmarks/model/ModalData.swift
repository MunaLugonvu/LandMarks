//
//  ModalData.swift
//  Landmarks
//
//  Created by Muna Lugonvu on 13/01/2026.
//

import Foundation

@Observable
class ModelData {
    // landmarks is an array of Landmark objects loaded from a JSON file
    var landmarks: [Landmark] = load("landmarkData.json")
}



// load function: loads a JSON file from the bundle and decodes it into any Decodable type T
func load<T: Decodable>(_ filename: String) -> T {
    // data will hold the raw bytes read from the file
    let data: Data

    // guard means: This condition must be true for the function to continue.
    // Here: checks that the file exists in the app bundle. If not, crash immediately.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    // do-catch block: attempts to read file contents
    do {
        // try means: This operation might throw an error, and I am explicitly handling it.
        // Data(contentsOf:) reads the raw bytes from the file. If it fails, execution jumps to catch.
        data = try Data(contentsOf: file)
    } catch {
        // fatalError means: Crash immediately and show this message.
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // do-catch block: attempts to decode JSON into the expected type T
    do {
        let decoder = JSONDecoder() // JSONDecoder knows how to parse JSON into Swift types
        // try decoder.decode means: attempt to decode JSON. It might fail if the JSON doesn't match the type T.
        // T.self is the type to decode into (determined by the caller)
        return try decoder.decode(T.self, from: data)
    } catch {
        // fatalError: crash if JSON parsing fails
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
