rs.initiate(
  {
    _id : "rs_shard_2",
    members: [
      { _id : 0, host : "shard_2:27018" },
    ]
  }
);
