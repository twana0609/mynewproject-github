$repoPath = "C:\Users\click\mynewproject-github"
$branch = "main"

Write-Host "Auto-sync started. Monitoring for changes..."
Write-Host "Current directory: $repoPath"
Write-Host "Press Ctrl+C to stop monitoring"

while ($true) {
    try {
        Set-Location $repoPath
        
        # Force git to check for changes
        git update-index --refresh
        
        $status = git status --porcelain
        if ($status) {
            Write-Host "`nChanges detected at $(Get-Date)"
            Write-Host "Changes: $status"
            
            git add .
            git commit -m "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
            git pull origin $branch
            git push origin $branch
            
            Write-Host "Changes synced successfully!"
        }
        
        Start-Sleep -Seconds 2
    }
    catch {
        Write-Host "Error occurred: $_"
        Start-Sleep -Seconds 5
    }
}