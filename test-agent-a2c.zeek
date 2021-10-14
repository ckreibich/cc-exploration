# Run with "zeek -j".

@load policy/frameworks/cluster/agent

# The agent's logs end up in a subdirectory, the cluster's main logs in this one.
redef ClusterAgent::name = "instance-1";
redef ClusterAgent::directory = "agent";
redef ClusterAgent::cluster_directory = fmt("%s/%s", @DIR, "cluster");

# Telling the agent about the controller's location will make it connect to the controller.
redef ClusterAgent::controller = [$address="127.0.0.1", $bound_port=2150/tcp];
