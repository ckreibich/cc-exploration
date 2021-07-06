# Run with "zeek -j". As a command-line-provided script, this file is included
# also in all Zeek processes forked. We don't want this to do anything in the
# data cluster nodes, so we guard with the controller code, which is only
# available inside the supervisor, or in the cluster management nodes.

@ifdef ( ClusterController::enable )

@load ./test-common

# Telling the controller about instance locations will make it connect to them them.
redef ClusterController::instances = {
	["instance-1"] = ClusterController::Types::Instance($name="", $host=127.0.0.1, $listen_port=2151/tcp)
};

@endif
