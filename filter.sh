# @Author: Nopallx
# @Date:   28-03-2020
# @Last Modified by: Nopallx


printf "[+] Email List : ${LIGHTCYAN}"
read emaillist
echo "[+] Memuat files $emaillist "
value=$(<$emaillist)
echo "[+] $emaillist telah dimuat"
echo "[+] Mencoba filter email pada file $emaillist"
echo "=============================================="
echo "=> YAHOO Family FILTER"
echo "$value" | grep -E "@yahoo|@ymail|@rocketmail|@bellsouth|@att|@sbcglobal|@rogers" | awk '{print $0}' | less >> "yahoo.txt"
echo "=> HOTMAIL Family FILTER"
echo "$value" | grep -E "@hotmail|@live|@outlook|@msn" | awk '{print $0}' | less >> "hotmail.txt"
echo "=> AOL FILTER"
echo "$value" | grep -E "@aol" | awk '{print $0}' | less >> "aol.txt"
echo "=> ICLOUD  FILTER"
echo "$value" | grep -E "@me.com|@icloud.com|@mac.com" | awk '{print $0}' | less >> "Icloud.txt"
echo "=> GMAIL  FILTER"
echo "$value" | grep -E "@gmail|@google|@googlemail" | awk '{print $0}' | less >> "Gmail.txt"
echo "=> Cox FILTER"
echo "$value" | grep -E "@cox" | awk '{print$0}' | less >> "cox.txt"
echo "=> JunoFamily  FILTER"
echo "$value" | grep -E "@juno|@netzero|@ntlworld|@virginmedia|@blueyonder" | awk '{print $0}' | less >> "JunoFamily.txt"
echo "=> Charter FILTER"
echo "$value" | grep -E "@charter" | awk '{print $0}' | less >> "Charter.txt"
echo "=> T-online FILTER"
echo "$value" | grep -E "@t.online" | awk '{print $0}' | less >> "t-online.txt"
echo "=> Archor FILTER"
echo "$value" | grep -E "@arcor.de" | awk '{print $0}' | less >> "arcor.txt"
echo "=> Comcast Filter"
echo "$value" | grep -E "@comcast" | awk '{print $0}' | less >> "Comcast.txt"
echo "=> OTHER  FILTER"
echo "$value" | grep -v -E '@yahoo|@ymail|@rocketmail|@rogers|@hotmail|@live|@outlook|@msn|@aol|@me.com|@icloud.com|@mac.com|@gmail|@google|@googlemail|@juno|@netzero|@att|@sbcglobal|@bellsouth|@ntlworld|@virginmedia|@blueyonder|@charter|@comcast|@t.online' | awk '{print $0}' | less >> "Other.txt"
echo "=============================================="
echo "=> Total Hasil"
echo "=============================================="
echo ""
wc -l yahoo.txt
wc -l hotmail.txt
wc -l aol.txt
wc -l Icloud.txt
wc -l cox.txt
wc -l Gmail.txt
wc -l Other.txt
wc -l JunoFamily.txt
wc -l Charter.txt
wc -l Comcast.txt
wc -l t-online.txt
echo ""