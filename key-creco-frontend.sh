git clone https://github.com/CreatiCoding/creco-key
cd creco-key
cp creco-frontend.env ../.env
cd ..
rm -rf creco-script

cat .env | xargs -I {} echo "export {}" >>.envrc

direnv allow
