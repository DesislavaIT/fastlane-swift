// This class is automatically included in FastlaneRunner during build
// If you have a custom Fastfile.swift, this file will be replaced by it
// Don't modify this file unless you are familiar with how fastlane's swift code generation works
// *** This file will be overwritten or replaced during build time ***

import Foundation

open class Fastfile: LaneFile {
    override public init() {
        super.init()
    }

    @LaneBuilder
    func releaseLaneBuild() -> [LaneAction] {
        "0.0.1"
        BuildApp()
        UploadToTestFlight()
    }
    
    func releaseLane() {
        let actions = releaseLaneBuild()
        let runner = LaneRunner(actions: actions)
        runner.run()
    }
    
    /* More lanes here */
}

// Please don't remove the lines below
// They are used to detect outdated files
// FastlaneRunnerAPIVersion [0.9.1]
