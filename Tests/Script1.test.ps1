$env:PSModulePath = "..\Modules"
Import-Module "DemoModule" -Force
Import-Module "DemoModuleTwo" -Force
Import-Module "Pester" -Force

InModuleScope DemoModule { # i can't nest this to override both
    describe "this mock should work" {
        it "this mock should work" {
            Mock "Write-A" 
            Mock "TestFileA" { $true }
            Mock "Write-B" 
            Mock "TestFileB" { $true }            
            & "..\Script.ps1"
        }
    }
}
