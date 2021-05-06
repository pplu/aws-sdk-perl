
package Paws::SecurityHub::GetInsightResultsResponse;
  use Moose;
  has InsightResults => (is => 'ro', isa => 'Paws::SecurityHub::InsightResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsightResultsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightResults => L<Paws::SecurityHub::InsightResults>

The insight results returned by the operation.


=head2 _request_id => Str


=cut

