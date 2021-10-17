sudo apt-get update && sudo apt-get install ca-certificates -y
curl -sSfL https://raw.githubusercontent.com/ddosify/ddosify/master/scripts/install.sh | sh

ddosify -t URL -n 100000 -d 300 -m GET -T 10 -l linear -h "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36"
