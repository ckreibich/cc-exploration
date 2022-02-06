# Just load an agent.
@load policy/frameworks/cluster/agent

redef ClusterAgent::name = "instance-2";
redef ClusterAgent::directory = "agent";
redef ClusterAgent::default_port = 2152/tcp;

# Listen port for the supervisor
redef Broker::default_port = 9998/tcp;
