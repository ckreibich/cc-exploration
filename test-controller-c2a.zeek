# Run with "zeek -j".

@load policy/frameworks/cluster/controller

redef ClusterController::directory = "controller";

# Telling the controller about instance locations will make it connect to them them.
redef ClusterController::instances = {
        ["instance-1"] = ClusterController::Types::Instance($name="", $host=127.0.0.1, $listen_port=2151/tcp)
};
