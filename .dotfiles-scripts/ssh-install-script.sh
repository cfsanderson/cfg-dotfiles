# generate new keys
echo ""
echo ""
echo ""
echo "===== after keygen, press enter to leave in default folder ====="
echo "===== go to 'GitHub > settings > SSH and GPG keys' and delete old SSH key and click on 'New SSH Key' button. ====="
echo "===== 'pbcopy < ~/.ssh/id_rsa.pub' to copy the contents of rsa.pub and paste into Github ====="
echo ""
echo ""
echo ""
echo "===== Next: Fix all those settings! ====="

ssh-keygen -t rsa -b 4096 -C "calebsanderson@icloud.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa
