function Read-TerminalIconsGlyphs {
    [OutputType([hashtable])]
    [CmdletBinding()]
    param(
        [Parameter()]
        [switch] $Force
    )

    if ($Force -or $null -eq $script:_glyphs) {
        $script:_glyphs = . $moduleRoot/Data/glyphs.ps1
    }

    return $script:_glyphs
}
