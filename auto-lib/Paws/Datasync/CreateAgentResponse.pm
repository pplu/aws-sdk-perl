
package Paws::Datasync::CreateAgentResponse;
  use Moose;
  has AgentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateAgentResponse

=head1 ATTRIBUTES


=head2 AgentArn => Str

The Amazon Resource Name (ARN) of the agent. Use the C<ListAgents>
operation to return a list of agents for your account and AWS Region.


=head2 _request_id => Str


=cut

1;