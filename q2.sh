awk '/Sherlock|Holmes/ {count++} END {print count}' sherlockholmes.txt

awk '{count += gsub(/Sherlock|Holmes/, "")} END {print count}' sherlockholmes.txt

awk '{print "Hello:", $0}' sherlockholmes.txt

awk '{for(i=1;i<NF;i++) if($i ~ /^[A-Z][a-zA-Z]{1,}$/ && $(i+1) ~ /^[A-Z][a-zA-Z]{1,}$/) {$i="ido"; $(i+1)="onn"}}1' sherlockholmes.txt

awk '{gsub(/\(.*\)/, "[" substr($0, index($0,$1)) "]"); print}' sherlockholmes.txt
