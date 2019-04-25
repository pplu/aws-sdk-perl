
package Paws::WAFRegional::ListLoggingConfigurationsResponse;
  use Moose;
  has LoggingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::LoggingConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListLoggingConfigurationsResponse

=head1 ATTRIBUTES


=head2 LoggingConfigurations => ArrayRef[L<Paws::WAFRegional::LoggingConfiguration>]

An array of LoggingConfiguration objects.


=head2 NextMarker => Str

If you have more C<LoggingConfigurations> than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<LoggingConfigurations>, submit
another C<ListLoggingConfigurations> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 _request_id => Str


=cut

1;