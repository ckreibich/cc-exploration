# Don't run this directly, it's loaded via test-a2c.zeek and test-c2a.zeek.

redef ClusterController::enable = T;
redef ClusterController::directory = "controller";

redef ClusterAgent::enable = T;
redef ClusterAgent::name = "instance-1";

# The agent's logs end up in a subdirectory, the cluster's main logs in this one.
redef ClusterAgent::directory = "agent";
redef ClusterAgent::cluster_directory = fmt("%s/%s", @DIR, "cluster");
