function Write-B {
    Param(
        [Parameter(Mandatory)]
        [ValidateScript({ TestFileB })]
        [string]$path
    )
    
    return $false
}

function TestFileB {
    throw "This should never be called"
}