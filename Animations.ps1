$Script:Animations = @()

if ($script:SupportsEmoji) {
    $Script:Animations += @(
        @{
            Frames = @("🕛","🕐","🕑","🕒","🕓","🕔","🕕","🕖","🕗","🕘","🕙","🕚")
            FrameInterval = 200
        },
        @{
            Frames = @("🙈 ","🙈 ","🙉 ","🙊 ")
            FrameInterval = 300
        }
    )
}

$Script:Animations += @(
    @{
        Frames = @("▐⠂       ▌","▐⠈       ▌","▐ ⠂      ▌","▐ ⠠      ▌","▐  ⡀     ▌","▐  ⠠     ▌","▐   ⠂    ▌","▐   ⠈    ▌","▐    ⠂   ▌","▐    ⠠   ▌","▐     ⡀  ▌","▐     ⠠  ▌","▐      ⠂ ▌","▐      ⠈ ▌","▐       ⠂▌","▐       ⠠▌","▐       ⡀▌","▐      ⠠ ▌","▐      ⠂ ▌","▐     ⠈  ▌","▐     ⠂  ▌","▐    ⠠   ▌","▐    ⡀   ▌","▐   ⠠    ▌","▐   ⠂    ▌","▐  ⠈     ▌","▐  ⠂     ▌","▐ ⠠      ▌","▐ ⡀      ▌","▐⠠       ▌")
        FrameInterval = 70
    }
    # Non-emoji animations should be added here as they are supported in older PS versions
)
