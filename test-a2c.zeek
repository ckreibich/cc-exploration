# Run with "zeek -j". As a command-line-provided script, this file is included
# also in all Zeek processes forked. We don't want this to do anything in the
# data cluster nodes, so we guard with the controller code, which is only
# available inside the supervisor, or in the cluster management nodes.

@load ./test-common

# Telling the agent about the controller's location will make it connect to the controller.
redef Management::Agent::controller = [$address="127.0.0.1", $bound_port=2150/tcp];
