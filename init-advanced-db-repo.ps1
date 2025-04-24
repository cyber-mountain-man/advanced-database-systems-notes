# init-advanced-db-repo.ps1
$base = "."

$folders = @(
    "part1-database-concepts/ch01-database-systems",
    "part1-database-concepts/ch02-data-models",
    "part2-design-concepts/ch03-relational-model",
    "part2-design-concepts/ch04-er-modeling",
    "part2-design-concepts/ch05-advanced-modeling",
    "part2-design-concepts/ch06-normalization",
    "part3-advanced-design-implementation/ch07-sql-intro",
    "part3-advanced-design-implementation/ch08-advanced-sql",
    "part3-advanced-design-implementation/ch09-database-design",
    "part4-advanced-database-concepts/ch10-transactions",
    "part4-advanced-database-concepts/ch11-performance-tuning",
    "part4-advanced-database-concepts/ch12-distributed-dbms",
    "part4-advanced-database-concepts/ch13-data-warehouses",
    "part4-advanced-database-concepts/ch14-bigdata-nosql",
    "part5-databases-internet/ch15-web-db-connectivity",
    "part6-database-administration/ch16-db-admin-security",
    "sql-labs/mysql",
    "sql-labs/sqlserver",
    "sql-labs/oracle",
    "diagrams/erds",
    "diagrams/normalization",
    "notes"
)

foreach ($folder in $folders) {
    $fullPath = Join-Path -Path $base -ChildPath $folder
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
    New-Item -ItemType File -Path (Join-Path $fullPath ".keep") -Force | Out-Null
}

Write-Output "✅ Folder structure created in current directory"
