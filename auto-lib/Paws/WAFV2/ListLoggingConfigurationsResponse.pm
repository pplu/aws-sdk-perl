
package Paws::WAFV2::ListLoggingConfigurationsResponse;
  use Moose;
  has LoggingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::LoggingConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListLoggingConfigurationsResponse

=head1 ATTRIBUTES


=head2 LoggingConfigurations => ArrayRef[L<Paws::WAFV2::LoggingConfiguration>]




=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, WAF returns a C<NextMarker> value in the response. To retrieve
the next batch of objects, provide the marker from the prior call in
your next request.


=head2 _request_id => Str


=cut

1;