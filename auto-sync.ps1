$repoPath = "C:\Users\click\mynewproject-github"
$branch = "main"

Write-Host "Auto-sync started. Monitoring for changes..."

while ($true) {
    try {
        $before = Get-ChildItem -Recurse $repoPath | Get-FileHash
        Start-Sleep -Seconds 3
        $after = Get-ChildItem -Recurse $repoPath | Get-FileHash

        if (-not (Compare-Object $before $after)) {
            continue
        }

        Set-Location $repoPath
        git add .
        $status = git status --porcelain
        if ($status) {
            git commit -m "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
            git pull origin $branch --rebase
            git push origin $branch
            Write-Host "Changes auto-synced at $(Get-Date)"
        }
    }
    catch {
        Write-Host "Error occurred: $_"
        Start-Sleep -Seconds 5
    }
}