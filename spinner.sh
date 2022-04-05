#!/usr/bin/env bash
select_spinner_chars() {
  opt=$1
  case $opt in
    1)  chars='|/-\\';;
    2)  chars='⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏';;
    3)  chars='⠂-–—–-';;
    4)  chars='◐◓◑◒';;
    5)  chars='◴◷◶◵';;
    6)  chars='◰◳◲◱';;
    7)  chars='▖▘▝▗';;
    8)  chars='■□▪▫';;
    9)  chars='▌▀▐▄';;
    10) chars='▉▊▋▌▍▎▏▎▍▌▋▊▉';;
    11) chars='▁▃▄▅▆▇█▇▆▅▄▃';;
    12) chars='←↖↑↗→↘↓↙';;
    13) chars='┤┘┴└├┌┬┐';;
    14) chars='◢◣◤◥';;
    15) chars='.oO°Oo.';;
    16) chars='.oO@*';;
    17) chars='🌍🌎🌏';;
    18) chars='◡◡ ⊙⊙ ◠◠';;
    19) chars='☱☲☴';;
    20) chars='⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏';;
    21) chars='⠋⠙⠚⠞⠖⠦⠴⠲⠳⠓';;
    22) chars='⠄⠆⠇⠋⠙⠸⠰⠠⠰⠸⠙⠋⠇⠆';;
    23) chars='⠋⠙⠚⠒⠂⠂⠒⠲⠴⠦⠖⠒⠐⠐⠒⠓⠋';;
    24) chars='⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠴⠲⠒⠂⠂⠒⠚⠙⠉⠁';;
    25) chars='⠈⠉⠋⠓⠒⠐⠐⠒⠖⠦⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈';;
    26) chars='⠁⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈⠈';;
    27) chars='⢄⢂⢁⡁⡈⡐⡠';;
    28) chars='⢹⢺⢼⣸⣇⡧⡗⡏';;
    29) chars='⣾⣽⣻⢿⡿⣟⣯⣷';;
    30) chars='⠁⠂⠄⡀⢀⠠⠐⠈';;
    31) chars='🌑🌒🌓🌔🌕🌝🌖🌗🌘🌚';;
    32) chars='🕛🕐🕑🕒🕓🕔🕕🕖🕗🕘🕙🕚';;
  esac
}

printf '\e[?25l'
for ((c=1;c<=32;c++)); do
  select_spinner_chars $c
  printf '%s)' "$c"
  for ((j=0;j<=3;j++)); do
    for ((i=0;i<${#chars};i++)); do
      printf '\e[5GTEXTO %s' "${chars:i:1}"
      sleep .1
    done
  done
  echo
done
printf '\e[?25h\n'
