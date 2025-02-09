awk '{print NR}' aliceinwonderland.txt | tail -1

awk '{n += gsub(/ Alice /, "")} END {print n}' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) count[$i]++} END {for(word in count) if(count[word] == 1) print word}' aliceinwonderland.txt


awk '{for(i=1;i<=NF;i++) count[$i]++} END {for(word in count) print count[word], word}' aliceinwonderland.txt | sort -nr | head -n 5

awk '{for(i=1;i<=NF;i++) sum+=length($i); count+=NF} END {print sum/count}' aliceinwonderland.txt
