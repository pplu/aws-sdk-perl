
package Paws::Appflow::ListFlowsResponse;
  use Moose;
  has Flows => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::FlowDefinition]', traits => ['NameInRequest'], request_name => 'flows');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListFlowsResponse

=head1 ATTRIBUTES


=head2 Flows => ArrayRef[L<Paws::Appflow::FlowDefinition>]

The list of flows associated with your account.


=head2 NextToken => Str

The pagination token for next page of data.


=head2 _request_id => Str


=cut

