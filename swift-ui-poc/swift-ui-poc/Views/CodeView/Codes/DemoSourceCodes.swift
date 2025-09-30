//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

// DemoSourceCodes.swift
import Foundation

struct DemoSourceCodes {
    static let splash = DemoSourceLoader.loadCode(named: "SplashScreenView")
    static let geometry = DemoSourceLoader.loadCode(named: "GeometryReaderView")
}

struct DemoSourceLoader {
    static func loadCode(named filename: String, withExtension ext: String = "swift") -> String {
        guard let url = Bundle.main.url(forResource: filename, withExtension: ext) else {
            return "// Failed to load \(filename).\(ext)"
        }
        
        do {
            let code = try String(contentsOf: url)
            return code
        } catch {
            return "// Error reading \(filename).\(ext): \\(error.localizedDescription)"
        }
    }
}

