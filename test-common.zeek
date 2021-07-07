# Don't run this directly, it's loaded via test-a2c.zeek and test-c2a.zeek.

@load policy/frameworks/cluster/agent
@load policy/frameworks/cluster/controller

redef ClusterController::directory = "controller";

# The agent's logs end up in a subdirectory, the cluster's main logs in this one.
redef ClusterAgent::name = "instance-1";
redef ClusterAgent::directory = "agent";
redef ClusterAgent::cluster_directory = fmt("%s/%s", @DIR, "cluster");
