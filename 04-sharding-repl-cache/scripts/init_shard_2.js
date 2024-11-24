rs.initiate(
  {
    _id : "rs_shard_2",
    members: [
      { _id : 0, host : "shard_2_1:27018" },
      { _id : 1, host : "shard_2_2:27018" },
      { _id : 2, host : "shard_2_3:27018" },
    ]
  }
);
