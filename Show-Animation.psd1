@{
    ModuleVersion        = '1.0.0'
    GUID                 = 'a330fb96-b594-47cc-9aae-4358e48af2be'
    Author               = 'Axel M. Kjønsberg'
    Description          = 'A module for showing animations in the PowerShell console.'
    PowerShellVersion    = '5.0'
    CompatiblePSEditions = @('Desktop', 'Core')
    Copyright            = '© 2024 Axel Kjønsberg. All rights reserved.'
    RootModule           = 'Show-Animation.psm1'
    FunctionsToExport    = @('Show-Animation')
    AliasesToExport      = @()
    PrivateData          = @{
        PSData = @{
            Tags         = @('Animation', 'Console', 'PowerShell')
            ProjectUri   = 'https://github.com/axelkjonsberg/PS-Show-Animation'
            LicenseUri   = 'https://github.com/axelkjonsberg/PS-Show-Animation/LICENSE'
            ReleaseNotes = 'https://github.com/axelkjonsberg/PS-Show-Animation/releases'
        }
    }
}
