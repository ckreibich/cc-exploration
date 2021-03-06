# Don't run this directly, it's loaded via test-a2c.zeek and test-c2a.zeek.

@load policy/frameworks/management/agent
@load policy/frameworks/management/controller

redef Management::Controller::directory = "controller";

# The agent's logs end up in a subdirectory, the cluster's main logs in this one.
redef Management::Agent::name = "instance-1";
redef Management::Agent::directory = "agent";
redef Management::Agent::cluster_directory = fmt("%s/%s", @DIR, "cluster");
