package Paws::Discovery::AgentInfo;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', xmlname => 'agentId', request_name => 'agentId', traits => ['Unwrapped','NameInRequest']);
  has AgentNetworkInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentNetworkInfo]', xmlname => 'agentNetworkInfoList', request_name => 'agentNetworkInfoList', traits => ['Unwrapped','NameInRequest']);
  has ConnectorId => (is => 'ro', isa => 'Str', xmlname => 'connectorId', request_name => 'connectorId', traits => ['Unwrapped','NameInRequest']);
  has Health => (is => 'ro', isa => 'Str', xmlname => 'health', request_name => 'health', traits => ['Unwrapped','NameInRequest']);
  has HostName => (is => 'ro', isa => 'Str', xmlname => 'hostName', request_name => 'hostName', traits => ['Unwrapped','NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AgentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::AgentInfo object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::AgentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Information about agents associated with the userE<rsquo>s AWS account.
Information includes agent IDs, IP addresses, MAC addresses, agent
health, hostname where the agent resides, and agent version for each
agent.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The agent ID.


=head2 AgentNetworkInfoList => ArrayRef[L<Paws::Discovery::AgentNetworkInfo>]

  Network details about the host where the agent resides.


=head2 ConnectorId => Str

  


=head2 Health => Str

  The health of the agent.


=head2 HostName => Str

  The name of the host where the agent resides. The host can be a server,
virtual machine, or an AWS EC2 instance.


=head2 Version => Str

  The agent version



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

