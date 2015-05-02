#!/usr/bin/env  swift

import Foundation
let env = NSProcessInfo.processInfo().environment
if let user = env["USER"] as? String {
    println("Hello World, this is \(user.uppercaseString)")
}

let currentPath = NSFileManager.defaultManager().currentDirectoryPath
println("The current directory is \(currentPath)")

let content = "content";
let data = NSData(base64EncodedString: content, options: .allZeros);
let result = NSFileManager.defaultManager().createFileAtPath(currentPath+"/copy", contents:data,attributes:nil);
println(result);

let contentsAtPath = NSFileManager.defaultManager().contentsOfDirectoryAtPath(currentPath, error: nil) as? [String]
if let contents = contentsAtPath {
    
    for contentItem in contents
    {
        println(contentItem)
    }
}
