# Run with "zeek -j".

@load policy/frameworks/cluster/controller

redef ClusterController::directory = "controller";
