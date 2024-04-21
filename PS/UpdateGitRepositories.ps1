# Defineeri algkataloog, millest otsimist alustada. Näiteks: "C:\MinuProjektid"
$algkataloog = "C:\Users\andrus\Documents\TalTech kool\Algoritmid ja struktuurid\Homework"

# Käi läbi kõik alamkataloogid
Get-ChildItem -Path $algkataloog -Directory -Recurse | ForEach-Object {
    # Sisene igasse kataloogi
    Push-Location $_.FullName

    # Kontrolli, kas kataloog on Git repositoorium (.git kataloogi olemasolu järgi)
    if (Test-Path -Path ".git") {
        # Kui jah, käivita 'git pull'
        Write-Host "Käivitan 'git pull' kataloogis $($_.FullName)"
        git pull
        "FinantsVabadus2021;"
    }
    
    # Naase eelmisele tasemele
    Pop-Location
}

Write-Host "Kõikide repositooriumite uuendamine on lõpetatud."
