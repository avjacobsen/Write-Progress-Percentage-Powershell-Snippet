# Of course this could be written in other ways, but the loop I wrote when I wrote this
# progress script needed these variables for other things aswell.

$Max = 200
$i = 0
$PercentComplete = 0
while ($i -le $Max) {
    $i++
    $PercentComplete = ($i * 100 / $Max)
    Write-Progress -Activity "Activity" -Status "$i / $Max ($($PercentComplete) %)" -PercentComplete $PercentComplete
    Start-Sleep -Milliseconds 10
}
