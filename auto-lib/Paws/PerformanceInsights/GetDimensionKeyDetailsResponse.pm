
package Paws::PerformanceInsights::GetDimensionKeyDetailsResponse;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::DimensionKeyDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetDimensionKeyDetailsResponse

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::PerformanceInsights::DimensionKeyDetail>]

The details for the requested dimensions.


=head2 _request_id => Str


=cut

1;