
import SwiftUI

func fileManager() {
    let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let cachesURL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    let tempURL = FileManager.default.temporaryDirectory

    let fileName = "example.txt"
    let fileURL = documentsURL.appendingPathComponent(fileName)
    let content = "This is a example text file."
    
    // save file
    do {
        try content.write(to: fileURL, atomically: true, encoding: .utf8)
        print("File written successfully!")
    } catch {
        print("Failed to write file: \(error)")
    }
    
    // read file
    let savedContent = try? String(contentsOf: fileURL, encoding: .utf8)
    
    // delete file
    try? FileManager.default.removeItem(at: fileURL)
    
    // check if the file exists
    if FileManager.default.fileExists(atPath: fileURL.path) {
        
    }
    
}
