
package Paws::Inspector::PreviewAgentsForResourceGroupResponse;
  use Moose;
  has agentPreviewList => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AgentPreview]');
  has nextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::PreviewAgentsForResourceGroupResponse

=head1 ATTRIBUTES

=head2 agentPreviewList => ArrayRef[Paws::Inspector::AgentPreview]

  

The resulting list of agents.









=head2 nextToken => Str

  

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.











=cut

1;