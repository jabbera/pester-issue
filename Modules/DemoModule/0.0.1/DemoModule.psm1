function Write-A {
    Param(
        [Parameter(Mandatory)]
        [ValidateScript({ TestFileA })]
        [string]$path
    )
    
    return $false
}

function TestFileA {
    throw "This should never be called"
}