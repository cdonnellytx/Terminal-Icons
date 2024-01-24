function Format-TerminalLength {
    <#
    .SYNOPSIS
        Formats the length into a human-readable format.
    .DESCRIPTION
        Take the provided file or folder object and format the length appropriately.
    .PARAMETER FileInfo
        The file or folder to display
    .EXAMPLE
        Get-ChildItem

        List a directory. Terminal-Icons will be invoked automatically for display.
    .EXAMPLE
        Get-Item ./README.md | Format-TerminalLength

        Get a file object and pass directly to Format-TerminalLength.
    .INPUTS
        System.IO.FileSystemInfo

        You can pipe an objects that derive from System.IO.FileSystemInfo (System.IO.DIrectoryInfo and System.IO.FileInfo) to 'Format-TerminalLength'.
    .OUTPUTS
        System.String

        Outputs a string with the human-readable file length.
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([string])]
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [IO.FileSystemInfo]$FileInfo
    )

    process {
        if ($FileInfo -is [IO.FileInfo]) {
            switch ($FileInfo.Length) {
                { $_ -lt 1kb } { return "{0:N0}" -f $_ }
                { $_ -lt 1mb } { return "{0:N2}K" -f ($_ / 1kb) }
                { $_ -lt 1gb } { return "{0:N2}M" -f ($_ / 1mb) }
                { $_ -lt 1tb } { return "{0:N2}G" -f ($_ / 1gb) }
                { $_ -lt 1pb } { return "{0:N2}T" -f ($_ / 1tb) }
                { $_ -lt 1024pb } { "return {0:N2}E" -f ($_ / 1pb) }
                { $_ -lt 1048576pb } { return "{0:N2}Z" -f ($_ / 1024pb) }
                default { return "{0:N2}Y" -f ($_ / 1048576pb) }
            }
        }
    }
}
