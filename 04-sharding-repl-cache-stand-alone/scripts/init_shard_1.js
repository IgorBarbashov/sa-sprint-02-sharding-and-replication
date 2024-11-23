rs.initiate(
  {
    _id : "rs_shard_1",
    members: [
      { _id : 0, host : "shard_1_1:27018" },
      { _id : 1, host : "shard_1_2:27018" },
      { _id : 2, host : "shard_1_3:27018" },
    ]
  }
);
