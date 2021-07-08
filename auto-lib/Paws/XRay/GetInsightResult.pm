
package Paws::XRay::GetInsightResult;
  use Moose;
  has Insight => (is => 'ro', isa => 'Paws::XRay::Insight');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightResult

=head1 ATTRIBUTES


=head2 Insight => L<Paws::XRay::Insight>

The summary information of an insight.


=head2 _request_id => Str


=cut

