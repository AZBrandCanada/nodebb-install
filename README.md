use admin
db.createUser( { user: "admin", pwd: "<Enter a secure password>", roles: [ { role: "root", db: "admin" } ] } )
use nodebb
db.createUser( { user: "nodebb", pwd: "<Enter a secure password>", roles: [ { role: "readWrite", db: "nodebb" }, { role: "clusterMonitor", db: "admin" } ] } )
quit()

Enable database authorization in the MongoDB configuration file /etc/mongod.conf by appending the following lines:

security:
  authorization: enabled

