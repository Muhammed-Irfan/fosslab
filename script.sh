wget -q "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=hMcUg%2FGA7hU0MOUh4%2FFRxndixG2o4goWV%2B7LYFH48bc%3D" -O results1.pdf
wget -q "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=B28XbixhL2qNkNOb51le3Q%2BfFwQNveszAdAr7o%2FUwqY%3D" -O results2.pdf
wget -q "http://14.139.184.212/ask/c4b/c4b.txt" -O c4b.txt
pdftotext -layout results1.pdf s1.txt
pdftotext -layout results2.pdf s2.txt
tr -d " "<s1.txt>s1trim.txt
rm s1.txt
tr -d '\n'<s1trim.txt>s1.txt
rm s1trim.txt
tr -d " "<s2.txt>s2trim.txt
rm s2.txt
tr -d '\n'<s2trim.txt>s2.txt
rm s2trim.txt
sed -i 's/MDL16CS/\nMDL16CS/g' s1.txt
sed -i 's/MDL16CS/\nMDL16CS/g' s2.txt
sed -i 's/ELECTRONICSANDB/\nELECTRONICSANDB/g' s1.txt
sed -i 's/TCE16CS/\nTCE16CS/g' s2.txt
grep 'MDL16CS' s1.txt >s1cs.txt
grep 'MDL16CS' s2.txt >s2cs.txt
sed -i 's/MA101/  MA101/g' s1cs.txt
sed -i 's/CY100/  CY100/g' s2cs.txt
cut -f4,5 c4b.txt>c4blist.txt
rm c4b.txt
awk '{print($1,$2,$3)}' c4blist.txt >c4b.txt
rm c4blist.txt
grep 'MDL' c4b.txt >cs4b.txt
join cs4b.txt s1cs.txt >s1c4b.txt
join cs4b.txt s2cs.txt >s2c4b.txt
rm c4b.txt
rm cs4b.txt
rm s1.txt
rm s2.txt
rm s1cs.txt
rm s2cs.txt
sed -i 's/(O)/ 10/g' s1c4b.txt
sed -i 's/(A+)/ 9/g' s1c4b.txt
sed -i 's/(A)/ 8.5/g' s1c4b.txt
sed -i 's/(B+)/ 8/g' s1c4b.txt
sed -i 's/(B)/ 7/g' s1c4b.txt
sed -i 's/(C)/ 6/g' s1c4b.txt
sed -i 's/(P)/ 5/g' s1c4b.txt
sed -i 's/(F)/ 0/g' s1c4b.txt
sed -i 's/(O)/ 10/g' s2c4b.txt
sed -i 's/(A+)/ 9/g' s2c4b.txt
sed -i 's/(A)/ 8.5/g' s2c4b.txt
sed -i 's/(B+)/ 8/g' s2c4b.txt
sed -i 's/(B)/ 7/g' s2c4b.txt
sed -i 's/(C)/ 6/g' s2c4b.txt
sed -i 's/(P)/ 5/g' s2c4b.txt
sed -i 's/(F)/ 0/g' s2c4b.txt
sed -i 's/MA101/4/g' s1c4b.txt
sed -i 's/PH100/4/g' s1c4b.txt
sed -i 's/BE110/3/g' s1c4b.txt
sed -i 's/BE10105/3/g' s1c4b.txt
sed -i 's/BE103/3/g' s1c4b.txt
sed -i 's/EE100/3/g' s1c4b.txt
sed -i 's/PH110/1/g' s1c4b.txt
sed -i 's/EE110/1/g' s1c4b.txt
sed -i 's/CS110/ 1/g' s1c4b.txt
sed -i 's/,/ /g' s1c4b.txt
sed -i 's/CY100/  4/g' s2c4b.txt
sed -i 's/MA102/4/g' s2c4b.txt
sed -i 's/BE100/4/g' s2c4b.txt
sed -i 's/BE102/3/g' s2c4b.txt
sed -i 's/EC100/3/g' s2c4b.txt
sed -i 's/CS100/ 3/g' s2c4b.txt
sed -i 's/,CS120/ 1/g' s2c4b.txt
sed -i 's/EC110/1/g' s2c4b.txt
sed -i 's/CY110/1/g' s2c4b.txt
sed -i 's/,/ /g' s2c4b.txt
awk '{ print ($1" "$2" "$3"  "($4 * $5 + $6 * $7 + $8* $9 + $10 * $11 + $12 * $13 + $14 * $15 + $16 * $17 + $18 * $19 + $20 * $21)/23) }' s1c4b.txt>s1sgpa.txt
awk '{ print ($1" "$2" "$3"  "($4 * $5 + $6 * $7 + $8* $9 + $10 * $11 + $12 * $13 + $14 * $15 + $16 * $17 + $18 * $19 + $20 * $21)/23) }' s2c4b.txt>s2sgpa.txt
rm s1c4b.txt
rm s2c4b.txt
rm results1.pdf
rm results2.pdf
paste s1sgpa.txt s2sgpa.txt >sgpa.txt
awk '{print($1" "$2" "$3" "(($4+$8)/2))}' sgpa.txt >cgpa.txt
echo "********************************CGPA***********************************"
cat cgpa.txt
rm s1sgpa.txt
rm s2sgpa.txt
rm sgpa.txt

