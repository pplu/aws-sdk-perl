
package Paws::Connect::ListInstancesResponse;
  use Moose;
  has InstanceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::InstanceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListInstancesResponse

=head1 ATTRIBUTES


=head2 InstanceSummaryList => ArrayRef[L<Paws::Connect::InstanceSummary>]

Information about the instances.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

