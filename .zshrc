autoload -U colors && colors
if [ `hostname` = 'SasismitMBP2016.local' ]; then
  PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
elif [ `hostname` = 'SasismitMBAirM3.local' ]; then
  PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
fi
