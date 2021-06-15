# Run with "zeek -j"

redef ClusterController::enable = T;
redef ClusterAgent::enable = T;

redef ClusterAgent::controller = [$address="127.0.0.1", $bound_port=2150/tcp];
