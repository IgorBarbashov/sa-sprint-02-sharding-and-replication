rs.initiate(
  {
    _id : "rs_shard_1",
    members: [
      { _id : 0, host : "shard_1:27018" },
    ]
  }
);
