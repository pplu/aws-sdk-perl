
package Paws::MediaConnect::ListFlowsResponse;
  use Moose;
  has Flows => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::ListedFlow]', traits => ['NameInRequest'], request_name => 'flows');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListFlowsResponse

=head1 ATTRIBUTES


=head2 Flows => ArrayRef[L<Paws::MediaConnect::ListedFlow>]

A list of flow summaries.


=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a ListFlows request with MaxResults set at 5.
The service returns the first batch of results (up to 5) and a
NextToken value. To see the next batch of results, you can submit the
ListFlows request a second time and specify the NextToken value.


=head2 _request_id => Str


=cut

