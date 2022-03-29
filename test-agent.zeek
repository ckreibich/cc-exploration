# Just load an agent.
@load policy/frameworks/management/agent

redef Management::Agent::name = "instance-2";
redef Management::Agent::directory = "agent";
redef Management::Agent::default_port = 2152/tcp;

# Listen port for the supervisor -- need a different port here because we're
# running this in addition to the existing agent on the same machine.
redef Broker::default_port = 9998/tcp;
