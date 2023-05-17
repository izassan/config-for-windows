# functions
function alias {
  Param($alias_name,$commands)
  if(-not ($alias_name -and $commands)){
    Write-Output "invalid argument"
  }
  $full_commands = "$commands `$args"
  if(Get-Alias $alias_name 2> $null){
    Remove-Alias -Force $alias_name
  }
  $null = New-Item -Force -Path function: -Name "script:$alias_name" -Value "$full_commands"
}

# aliases
## git
alias "gst" "git status"
alias "ga" "git add"
alias "gc" "git commit"
alias "gcm" "git commit -m"
alias "gs" "git switch"
alias "gsc" "git switch -c"
alias "gpl" "git pull"
alias "gps" "git push"
alias "gpso" "git push origin"
alias "gf" "git fetch"
alias "gm" "git merge"
alias "gb" "git branch"
alias "gba" "git branch -a"
alias "gbd" "git branch -d"
alias "grp" "git remote prune"
alias "grpo" "git remote prune origin"
alias "gd" "git diff"
alias "gdc" "git diff --cached"
