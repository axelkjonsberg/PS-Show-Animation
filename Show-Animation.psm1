# Based on gist by @WilelmRB: https://gist.github.com/WillemRB/5eb18301462ed6eb23bf

$animationsScriptPath = Join-Path -Path $PSScriptRoot -ChildPath "Animations.ps1"
.$animationsScriptPath

function Show-Animation {
    param(
        [scriptblock]$scriptBlock
    )

    $cursorTop = [Console]::CursorTop

    try {
        [Console]::CursorVisible = $false

        # Randomly select an animation
        $animationIndex = Get-Random -Maximum $Script:Animations.Length
        $animation = $Script:Animations[$animationIndex]
        $frames = $animation.Frames
        $frameInterval = $animation.FrameInterval

        $job = Start-Job -ScriptBlock $scriptBlock

        while ($job.JobStateInfo.State -eq "Running") {
            foreach ($frame in $frames) {
                Write-Host "$frame" -NoNewline
                [Console]::SetCursorPosition(0,$cursorTop)

                Start-Sleep -Milliseconds $frameInterval
            }
        }

        # Wait for the job to complete and suppress its direct output
        $result = Receive-Job -Job $job -Wait -AutoRemoveJob
    }
    finally {
        [Console]::CursorVisible = $true

        # Clear the line where the animation was displayed
        [Console]::SetCursorPosition(0,$cursorTop)
        Write-Host (" " * $host.UI.RawUI.WindowSize.Width) -NoNewline

        # Return the cursor to the start of the line and display the result
        [Console]::SetCursorPosition(0,$cursorTop)
        Write-Host $result
    }
}

Set-Alias -Name sa -Value Show-Animation
Export-ModuleMember -Function 'Show-Animation' -Alias 'sa'
