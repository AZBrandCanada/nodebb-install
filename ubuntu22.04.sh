sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-7.0.gpg
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_lts.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs
sudo apt-get install -y mongodb-org
mongod --version
sudo systemctl start mongod
sudo systemctl status mongod
mongosh
sudo systemctl restart mongod
sudo apt-get install -y git
git clone -b v3.x https://github.com/NodeBB/NodeBB.git nodebb
cd nodebb
./nodebb setup
./nodebb start
