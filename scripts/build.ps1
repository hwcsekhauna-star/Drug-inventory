# PowerShell script to build index.html by injecting JSON into template
# Paths are relative to the root of the repository
$templateFile = "src/app_template.html"
$jsonFile = "data/optimized_payload.json"
$outputFile = "index.html"

if (!(Test-Path $templateFile)) {
    Write-Error "Template file not found at $templateFile"
    exit 1
}

if (!(Test-Path $jsonFile)) {
    Write-Error "Data file not found at $jsonFile"
    exit 1
}

Write-Host "Reading template..."
$template = [System.IO.File]::ReadAllText($templateFile)

Write-Host "Reading JSON payload..."
$json = [System.IO.File]::ReadAllText($jsonFile)

Write-Host "Injecting data..."
$finalHtml = $template.Replace("PLACEHOLDER_JSON", $json)

Write-Host "Writing output..."
[System.IO.File]::WriteAllText($outputFile, $finalHtml)

Write-Host "Build complete: $outputFile"
