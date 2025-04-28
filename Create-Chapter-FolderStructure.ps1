# Create-Chapter-FolderStructure.ps1
param (
    [string]$ChapterFolder = "chXX-your-chapter-name"
)

$base = "part1-database-concepts/$ChapterFolder"

$folders = @(
    "$base/datasets/sqlserver",
    "$base/datasets/mysql",
    "$base/datasets/oracle",
    "$base/datasets/access"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
    New-Item -ItemType File -Path (Join-Path $folder ".keep") -Force | Out-Null
}

New-Item -ItemType File -Path "$base/${ChapterFolder}-notes.md" -Force | Out-Null

Write-Output "✅ Folder structure created at: $base"
