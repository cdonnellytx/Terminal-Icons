---
external help file: Terminal-Icons-help.xml
Module Name: Terminal-Icons
online version:
schema: 2.0.0
---

# Format-TerminalLength

## SYNOPSIS
Formats the length into a human-readable format.

## SYNTAX

```
Format-TerminalLength [-FileInfo] <FileSystemInfo> [<CommonParameters>]
```

## DESCRIPTION
Take the provided file or folder object and format the length appropriately.

## EXAMPLES

### EXAMPLE 1
```
Get-ChildItem
```

List a directory.
Terminal-Icons will be invoked automatically for display.

### EXAMPLE 2
```
Get-Item ./README.md | Format-TerminalLength
```

Get a file object and pass directly to Format-TerminalLength.

## PARAMETERS

### -FileInfo
The file or folder to display

```yaml
Type: FileSystemInfo
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.FileSystemInfo
### You can pipe an objects that derive from System.IO.FileSystemInfo (System.IO.DIrectoryInfo and System.IO.FileInfo) to 'Format-TerminalLength'.
## OUTPUTS

### System.String
### Outputs a string with the human-readable file length.
## NOTES

## RELATED LINKS
