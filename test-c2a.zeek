# Run with "zeek -j"

redef ClusterController::enable = T;
redef ClusterAgent::enable = T;

redef ClusterController::instances = {
	["testinst"] = ClusterController::Types::Instance($name="testinst", $host=127.0.0.1, $listen_port=2151/tcp)
};
