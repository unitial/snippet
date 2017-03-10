#/bin/sh

tr -s ' ' '\n' < words.txt | tr '[A-Z]' '[a-z]' | sed 's/[;:,.?]//' > step1.txt

cat step1.txt | sort | uniq > step2.txt

echo "\c" >  step3.txt
for word in `cat step2.txt`; do
  echo "$word \c" >> step3.txt
  grep -w $word step1.txt | wc -l | sed 's/ *//'>> step3.txt
done

cat step3.txt
