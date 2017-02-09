
package Paws::Inspector::PreviewAgentsResponse;
  use Moose;
  has AgentPreviews => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AgentPreview]', traits => ['NameInRequest'], request_name => 'agentPreviews' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::PreviewAgentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentPreviews => ArrayRef[L<Paws::Inspector::AgentPreview>]

The resulting list of agents.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;