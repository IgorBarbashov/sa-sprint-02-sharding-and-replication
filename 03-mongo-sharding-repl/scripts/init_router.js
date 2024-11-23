sh.addShard( "rs_shard_1/shard_1_1:27018");
sh.addShard( "rs_shard_2/shard_2_1:27018");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );

use somedb;

console.log("Creating records in the \"helloDoc\" collection...");

for(var i = 0; i < 1300; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})