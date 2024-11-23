rs.initiate({
  _id : "rs_configSrv",
  configsvr: true,
  members: [
    { _id : 0, host : "configSrv_1:27019" },
    { _id : 1, host : "configSrv_2:27019" }
  ]
});
