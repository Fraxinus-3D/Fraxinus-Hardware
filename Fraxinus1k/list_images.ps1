$env:Path = $env:Path + ";C:\Program Files\stl-thumb"
$current_path=(Convert-Path .)

Get-ChildItem -Path STLs -Recurse -File -Name -Include *.stl | ForEach-Object {
  Write-Host STls\$_
  echo STLs\$_ images\$_.png >> stl-list.txt
  stl-thumb.exe $current_path\STls\$_ $current_path\images\$_.png
}
