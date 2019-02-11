
package Paws::SecurityHub::GetInsightsResponse;
  use Moose;
  has Insights => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Insight]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsightsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Insights => ArrayRef[L<Paws::SecurityHub::Insight>]

The insights returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

