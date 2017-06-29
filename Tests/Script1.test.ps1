$env:PSModulePath = "..\Modules"
Import-Module "DemoModule" -Force
Import-Module "DemoModuleTwo" -Force
Import-Module "Pester" -Force

describe "this mock should work" {
    it "this mock should work" {
        Mock "Write-A" 
        Mock -ModuleName DemoModule "TestFileA" { $true }
        Mock "Write-B" 
        Mock -ModuleName DemoModuleTwo "TestFileB" { $true }            
        & "..\Script.ps1"
    }
}
