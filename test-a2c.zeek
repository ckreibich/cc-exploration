# Run with "zeek -j". As a command-line-provided script, this file is included
# also in all Zeek processes forked. We don't want this to do anything in the
# data cluster nodes, so we guard with the controller code, which is only
# available inside the supervisor, or in the cluster management nodes.

@ifdef ( ClusterController::enable )

redef ClusterController::enable = T;
redef ClusterAgent::enable = T;

redef ClusterAgent::name = "instance-1";
redef ClusterAgent::controller = [$address="127.0.0.1", $bound_port=2150/tcp];

@endif
