
package Paws::Discovery::DescribeAgentsResponse;
  use Moose;
  has AgentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentInfo]', traits => ['Unwrapped'], xmlname => 'agentsInfo' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeAgentsResponse

=head1 ATTRIBUTES


=head2 AgentsInfo => ArrayRef[L<Paws::Discovery::AgentInfo>]

Lists AWS agents by ID or lists all agents associated with your user
account if you did not specify an agent ID. The output includes agent
IDs, IP addresses, media access control (MAC) addresses, agent health,
host name where the agent resides, and the version number of each
agent.



=head2 NextToken => Str

The call returns a token. Use this token to get the next set of
results.




=cut

1;