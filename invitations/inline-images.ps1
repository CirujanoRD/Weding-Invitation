# placeholder: copy of inline-images script for invitations folder
$ErrorActionPreference = 'Stop'
$base1 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('Imagen1.jpg'))
$base2 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('Imagen2.jpg'))
$htmlPath = 'Wedding invitation.html'
$outPath = 'Wedding invitation.inlined.html'
$html = Get-Content $htmlPath -Raw

# Replace background URLs
$html = $html -replace "url\('Imagen1.jpg'\)", "url('data:image/jpeg;base64,$base1')"
$html = $html -replace "url\('Imagen2.jpg'\)", "url('data:image/jpeg;base64,$base2')"

# Build replacement src attributes safely to avoid parser issues
$rep1 = 'src="data:image/jpeg;base64,' + $base1 + '"'
$rep2 = 'src="data:image/jpeg;base64,' + $base2 + '"'
$html = $html -replace 'src="Imagen1.jpg"', $rep1
$html = $html -replace 'src="Imagen2.jpg"', $rep2

Set-Content $outPath -Value $html -Encoding utf8
Write-Output "Created: $outPath"
Get-Item $outPath | Format-List Name,Length
